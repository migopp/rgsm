/*
 * Tokens are any of:
 *
 * section delimiters ~ `.text` or `.data`
 * labels: `i_am_label:` or `i_am_label`
 * instruction names ~ `movl`
 * register references ~ `r0`
 * immediate values ~ `#97`
 */

pub struct Token {
    token_type: TokenType,
    data: String,
}

pub enum TokenType {
    SECTION,
    LABEL,
    INSRUCTION,
    REGISTER,
    IMMEDIATE,
}

/*
 * Commands are idiomatically Gheith ISA instructions
 *
 * e.g.,
 *
 * `movh r0, #97`
 * `ld r0, r1`
 */

pub struct Command {
    command_type: CommandType,
    field_1: Token,
    field_2: Token,
    field_3: Option<Token>,
}

pub enum CommandType {
    // Official instructions
    SUB,
    ADD,
    MUL,
    DIV,
    MOVL,
    MOVH,
    JZ,
    JNZ,
    JS,
    JNS,
    LD,
    ST,
    PUSH,
    POP,
    CALL,
    RET,
    // Psuedo-instructions
    PRINT,
    MOV,
    J,
    // End
    END,
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
    value: i16,
}
