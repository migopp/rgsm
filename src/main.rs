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
    let src_fetch_result = std::fs::read_to_string(&args.src);
    let program_text = match src_fetch_result {
        Ok(program_text) => program_text,
        Err(error) => {
            panic!("COULD NOT OPEN ASM FILE:\n{}", error);
        }
    };
}
