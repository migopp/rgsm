/*
 * Tokens are any of:
 *
 * section delimiters ~ `.text` or `.data`
 * labels: `i_am_label:` or `i_am_label`
 * instruction names ~ `movl`
 * register references ~ `r0`
 * immediate values ~ `#97`
 */

#[derive(Debug)]
pub enum Token {
    Section(bool),
    LabelDef(String),
    LabelRef(String),
    Instruction(String),
    Register(u64),
    Immediate(u64),
}

/*
 * Commands are idiomatically Gheith ISA instructions
 *
 * e.g.,
 *
 * `movh r0, #97`
 * `ld r0, r1`
 */

pub enum Command {
    // Official instructions
    Sub(u64, u64, u64),
    Add(u64, u64, u64),
    Mul(u64, u64, u64),
    Div(u64, u64, u64),
    Mod(u64, u64, u64),
    And(u64, u64, u64),
    Movl(u64, u64),
    Movh(u64, u64),
    Jz(u64, u64),
    Jnz(u64, u64),
    Js(u64, u64),
    Jns(u64, u64),
    Ld(u64, u64),
    Ldo(u64, u64, u64),
    St(u64, u64),
    Sto(u64, u64, u64),
    Call(u64),
    Ret,
    // Psuedo-instructions
    Push(u64),
    Pop(u64),
    Print(u64),
    Mov(u64, u64),
    J(u64),
    // End
    End,
}

/*
 * DataValues are stored in the data section with an associated label
 *
 * e.g.,
 *
 * ```
 * .data
 *     my_first_immediate:
 *         0
 *     my_second_immediate:
 *         2024
 *     ...
 * ```
 */

pub struct DataValue {
    label: Token,
    value: u64,
}
