// Library Imports
use clap::Parser;

// Module Imports
mod assembler;

// Namespaces
use crate::assembler::assemble;

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

    // Assmeble program text
    assemble(program_text);
}
