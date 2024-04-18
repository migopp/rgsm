mod assembler;
mod data;
mod lexer;
mod parser;

use crate::assembler::assemble;
use crate::data::*;
use crate::lexer::lex;
use crate::parser::parse;

use clap::Parser;

/*
 * Structure for CLI arguments
 *
 * src: path to asm source
 */
#[derive(Parser)]
#[command(version, about)]
struct Args {
    src: std::path::PathBuf,
}

// Entry point
fn main() {
    // Get CLI args
    let args = Args::parse();

    // Get src file content
    let src = std::fs::read_to_string(&args.src);
    let program_text = match src {
        Ok(program_text) => program_text,
        Err(error) => {
            panic!("COULD NOT OPEN ASM FILE: {}", error);
        }
    };

    // Assemble
    let tokens: Vec<Token> = lex(&program_text);
    let (commands, data) = parse(tokens);
    let hex_code: String = assemble(commands, data);

    // Output to file
    let out_file_name = match args.src.file_stem() {
        Some(name) => name.to_string_lossy(),
        None => panic!("INVALID FILE NAME"),
    };
    let out_file_path: &str = &format!("{}.hex", out_file_name);
    std::fs::write(out_file_path, hex_code).expect("UNABLE TO WRITE CONTENT");
}
