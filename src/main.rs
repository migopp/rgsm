use clap::Parser;

/*
 * Structure for CLI arguments
 *
 * src: <REQUIRED> path to asm file
 */
#[derive(Parser)]
#[command(version, about)]
struct Args {
    src: std::path::PathBuf,
}

fn main() {
    let args = Args::parse();
    println!("src path: {}", args.src.display());
}
