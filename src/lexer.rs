use crate::data::*;
use regex::Regex;
use std::collections::HashSet;

// Tokenize program text
pub fn lex(text_raw: &str) -> Vec<Token> {
    // Preprocess program text
    let text_clean: &str = &remove_comments(text_raw);
    let labels: HashSet<String> = detect_labels(text_clean);

    // Shitty lexer
    let mut text: &str = text_clean;
    let mut tokens: Vec<Token> = Vec::new();
    while !text.is_empty() {
        // Skip whitespace
        let skip_len: usize = skip(text);
        text = &text[skip_len..];
        if text.is_empty() {
            break;
        }

        // Get next string
        let next_char: char = text.chars().next().unwrap();
        let (content, length) = match next_char {
            '#' => chomp_num(&text[1..]),
            '.' => chomp_str(&text[1..]),
            ch if ch.is_alphabetic() => chomp_str(&text),
            other => panic!("UNABLE TO PARSE: {}", other),
        };

        // Clasify token
        let token: Token = match next_char {
            '#' => Token::Immediate(content.parse::<u64>().unwrap()),
            '.' => Token::Section(content == "text"),
            ch if ch.is_alphabetic() => {
                // Check if register
                let reg_pattern = Regex::new(r"^r[0-9][0-5]?$").unwrap();
                if reg_pattern.is_match(&content) {
                    Token::Register(content[1..].parse::<u64>().unwrap())
                } else {
                    // Struck a label!
                    let last: char = text.chars().nth(length).unwrap();
                    let is_label: bool = labels.contains(&content);
                    let is_label_def: bool = is_label && last == ':';
                    if is_label_def {
                        Token::LabelDef(content)
                    } else if is_label {
                        Token::LabelRef(content)
                    } else {
                        Token::Instruction(content)
                    }
                }
            }
            _ => panic!("UNABLE TO CLASSIFY: {}", content),
        };

        // Update program text
        match token {
            Token::Immediate(_) | Token::Section(_) | Token::LabelDef(_) => {
                text = &text[length + 1..]
            }
            Token::Register(_) | Token::LabelRef(_) | Token::Instruction(_) => {
                text = &text[length..]
            }
        }

        // Add token to vector
        tokens.push(token);
    }

    tokens
}

// LEXING HELPERS

fn chomp_while<F>(text: &str, cond: F) -> (String, usize)
where
    F: Fn(char) -> bool,
{
    let mut rel_idx: usize = 0;
    for ch in text.chars() {
        if !cond(ch) {
            break;
        }
        rel_idx += ch.len_utf8();
    }

    (text[..rel_idx].to_string(), rel_idx)
}

// Chomping wrappers
fn chomp_str(text: &str) -> (String, usize) {
    chomp_while(text, |ch| ch.is_alphanumeric() || ch == '_')
}

fn chomp_num(text: &str) -> (String, usize) {
    chomp_while(text, |ch| ch.is_numeric())
}

// skip whitespace
fn skip(text: &str) -> usize {
    let (_, skip_num) = chomp_while(text, |ch| ch.is_whitespace() || ch == ',');
    skip_num
}

// PREPROCESS

fn remove_comments(text: &str) -> String {
    let mut filtered_text: String = String::new();

    for line in text.split("\n") {
        if let Some(split_idx) = line.find("//") {
            let (clean_portion, _) = line.split_at(split_idx);
            if !clean_portion.trim().is_empty() {
                // Add only non-comment substrings to program text
                filtered_text.push_str(&format!("{clean_portion}\n"));
            }
        } else {
            // Append non-commented line
            filtered_text.push_str(&format!("{line}\n"));
        }
    }

    filtered_text
}

fn detect_labels(text: &str) -> HashSet<String> {
    // Detect labels
    let mut labels: HashSet<String> = HashSet::new();
    for line in text.split("\n") {
        for comp in line.split(" ") {
            if let Some(split_idx) = comp.find(":") {
                // Identify and cache label
                let (label_comp, _) = comp.split_at(split_idx);
                labels.insert(label_comp.trim().to_string());
            }
        }
    }

    labels
}
