/*
 * Tokens are any of:
 *
 * section delimiters ~ `.text` or `.data`
 * labels: `i_am_label:` or `i_am_label`
 * instruction names ~ `movl`
 * register references ~ `r0`
 * immediate values ~ `#97`
 */

#[derive(Debug, Clone)]
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

#[derive(Debug)]
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
    Ldr(u64, u64, u64),
    Ldo(u64, u64, u64),
    St(u64, u64),
    Str(u64, u64, u64),
    Sto(u64, u64, u64),
    Call(u64),
    Ret,
    Led(u64, bool),
    Leds(u64),
    Rdsw(u64),
    // Psuedo-instructions
    Push(u64),
    Pop(u64),
    Print(u64),
    Movlb(u64, u64),
    J(u64, bool),
    // End
    End,
}
