use crate::data::*;
use std::collections::HashSet;

pub fn lex(text: &str) -> Vec<Token> {
    let tokens: Vec<Token> = Vec::new();

    // Preprocess program text
    let clean_text: &str = &remove_comments(text);
    let labels: HashSet<String> = detect_labels(clean_text);

    // TODO: Create tokens from program text
    // ...

    tokens
}

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
