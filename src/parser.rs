use crate::data::*;
use std::collections::HashMap;

// Organize whole instructions and initial memory values from tokens
pub fn parse(tokens_raw: Vec<Token>) -> (Vec<Command>, Vec<u64>) {
    // Preprocess tokens
    let (text_tokens, data_tokens) = reorder_tokens(tokens_raw);
    let label_refs: HashMap<String, u64> = resolve_labels(&text_tokens, &data_tokens);

    // Analyze and parse tokens
    // `.text`
    let mut commands: Vec<Command> = Vec::new();
    let mut tok_idx: usize = 0;
    while tok_idx < text_tokens.len() {
        let token: &Token = &text_tokens[tok_idx];
        match token {
            Token::Instruction(ins) => match ins.as_str() {
                "sub" => {
                    // `sub` get args
                    let mut sub_regs: Vec<u64> = Vec::new();
                    for arg_idx in 1..4 {
                        let arg_tok: &Token = &text_tokens[tok_idx + arg_idx];
                        let reg: u64 = match arg_tok {
                            Token::Register(reg_value) => *reg_value,
                            _ => panic!(
                                "INVALID ARGUMENT FOR `SUB` (EXPECTED REGISTER): {:?}",
                                arg_tok
                            ),
                        };
                        sub_regs.push(reg);
                    }
                    tok_idx += 3;

                    // `sub` form command
                    let sub_cmd: Command = Command::Sub(sub_regs[0], sub_regs[1], sub_regs[2]);
                    commands.push(sub_cmd);
                }
                "add" => {
                    // `add` get args
                    let mut add_regs: Vec<u64> = Vec::new();
                    for arg_idx in 1..4 {
                        let arg_tok: &Token = &text_tokens[tok_idx + arg_idx];
                        let reg: u64 = match arg_tok {
                            Token::Register(reg_value) => *reg_value,
                            _ => panic!(
                                "INVALID ARGUMENT FOR `ADD` (EXPECTED REGISTER): {:?}",
                                arg_tok
                            ),
                        };
                        add_regs.push(reg);
                    }
                    tok_idx += 3;

                    // `add` form command
                    let add_cmd: Command = Command::Add(add_regs[0], add_regs[1], add_regs[2]);
                    commands.push(add_cmd);
                }
                "mul" => {
                    // `mul` get args
                    let mut mul_regs: Vec<u64> = Vec::new();
                    for arg_idx in 1..4 {
                        let arg_tok: &Token = &text_tokens[tok_idx + arg_idx];
                        let reg: u64 = match arg_tok {
                            Token::Register(reg_value) => *reg_value,
                            _ => panic!(
                                "INVALID ARGUMENT FOR `MUL` (EXPECTED REGISTER): {:?}",
                                arg_tok
                            ),
                        };
                        mul_regs.push(reg);
                    }
                    tok_idx += 3;

                    // `mul` form command
                    let mul_cmd: Command = Command::Mul(mul_regs[0], mul_regs[1], mul_regs[2]);
                    commands.push(mul_cmd);
                }
                "div" => {
                    // `div` get args
                    let mut div_regs: Vec<u64> = Vec::new();
                    for arg_idx in 1..4 {
                        let arg_tok: &Token = &text_tokens[tok_idx + arg_idx];
                        let reg: u64 = match arg_tok {
                            Token::Register(reg_value) => *reg_value,
                            _ => panic!(
                                "INVALID ARGUMENT FOR `DIV` (EXPECTED REGISTER): {:?}",
                                arg_tok
                            ),
                        };
                        div_regs.push(reg);
                    }
                    tok_idx += 3;

                    // `div` form command
                    let div_cmd: Command = Command::Div(div_regs[0], div_regs[1], div_regs[2]);
                    commands.push(div_cmd);
                }
                "mod" => {
                    // `mod` get args
                    let mut mod_regs: Vec<u64> = Vec::new();
                    for arg_idx in 1..4 {
                        let arg_tok: &Token = &text_tokens[tok_idx + arg_idx];
                        let reg: u64 = match arg_tok {
                            Token::Register(reg_value) => *reg_value,
                            _ => panic!(
                                "INVALID ARGUMENT FOR `MOD` (EXPECTED REGISTER): {:?}",
                                arg_tok
                            ),
                        };
                        mod_regs.push(reg);
                    }
                    tok_idx += 3;

                    // `mod` form command
                    let mod_cmd: Command = Command::Mod(mod_regs[0], mod_regs[1], mod_regs[2]);
                    commands.push(mod_cmd);
                }
                "and" => {
                    // `and` get args
                    let mut and_regs: Vec<u64> = Vec::new();
                    for arg_idx in 1..4 {
                        let arg_tok: &Token = &text_tokens[tok_idx + arg_idx];
                        let reg: u64 = match arg_tok {
                            Token::Register(reg_value) => *reg_value,
                            _ => panic!(
                                "INVALID ARGUMENT FOR `AND` (EXPECTED REGISTER): {:?}",
                                arg_tok
                            ),
                        };
                        and_regs.push(reg);
                    }
                    tok_idx += 3;

                    // `and` form command
                    let and_cmd: Command = Command::And(and_regs[0], and_regs[1], and_regs[2]);
                    commands.push(and_cmd);
                }
                "movl" => {
                    // `movl` get args
                    let rt_tok: &Token = &text_tokens[tok_idx + 1];
                    let rt: u64 = match rt_tok {
                        Token::Register(rt_value) => *rt_value,
                        _ => panic!(
                            "INVALID ARGUMENT FOR `MOVL` (EXPECTED REGISTER): {:?}",
                            rt_tok
                        ),
                    };
                    let imm_tok: &Token = &text_tokens[tok_idx + 2];
                    let imm: u64 = match imm_tok {
                        Token::Immediate(imm_value) => *imm_value,
                        _ => panic!(
                            "INVALID ARGUMENT FOR `MOVL` (EXPECTED IMMEDIATE): {:?}",
                            imm_tok
                        ),
                    };
                    tok_idx += 2;

                    // `movl` form command
                    let movl_cmd: Command = Command::Movl(rt, imm);
                    commands.push(movl_cmd);
                }
                "movh" => {
                    // `movh` get args
                    let rt_tok: &Token = &text_tokens[tok_idx + 1];
                    let rt: u64 = match rt_tok {
                        Token::Register(rt_value) => *rt_value,
                        _ => panic!(
                            "INVALID ARGUMENT FOR `MOVH` (EXPECTED REGISTER): {:?}",
                            rt_tok
                        ),
                    };
                    let imm_tok: &Token = &text_tokens[tok_idx + 2];
                    let imm: u64 = match imm_tok {
                        Token::Immediate(imm_value) => *imm_value,
                        _ => panic!(
                            "INVALID ARGUMENT FOR `MOVH` (EXPECTED IMMEDIATE): {:?}",
                            imm_tok
                        ),
                    };
                    tok_idx += 2;

                    // `movh` form command
                    let movh_cmd: Command = Command::Movh(rt, imm);
                    commands.push(movh_cmd);
                }
                "jz" => {
                    // `jz` get args
                    let mut jz_regs: Vec<u64> = Vec::new();
                    for arg_idx in 1..3 {
                        let arg_tok: &Token = &text_tokens[tok_idx + arg_idx];
                        let arg: u64 = match arg_tok {
                            Token::Register(reg_value) => *reg_value,
                            _ => {
                                panic!(
                                    "INVALID ARGUMENT FOR `JZ` (EXPECTED REGISTER): {:?}",
                                    arg_tok
                                )
                            }
                        };
                        jz_regs.push(arg);
                    }
                    tok_idx += 2;

                    // `jz` form command
                    let jz_cmd: Command = Command::Jz(jz_regs[0], jz_regs[1]);
                    commands.push(jz_cmd);
                }
                "jnz" => {
                    // `jnz` get args
                    let mut jnz_regs: Vec<u64> = Vec::new();
                    for arg_idx in 1..3 {
                        let arg_tok: &Token = &text_tokens[tok_idx + arg_idx];
                        let arg: u64 = match arg_tok {
                            Token::Register(reg_value) => *reg_value,
                            _ => {
                                panic!(
                                    "INVALID ARGUMENT FOR `JNZ` (EXPECTED REGISTER): {:?}",
                                    arg_tok
                                )
                            }
                        };
                        jnz_regs.push(arg);
                    }
                    tok_idx += 2;

                    // `jnz` form command
                    let jnz_cmd: Command = Command::Jnz(jnz_regs[0], jnz_regs[1]);
                    commands.push(jnz_cmd);
                }
                "js" => {
                    // `js` get args
                    let mut js_regs: Vec<u64> = Vec::new();
                    for arg_idx in 1..3 {
                        let arg_tok: &Token = &text_tokens[tok_idx + arg_idx];
                        let arg: u64 = match arg_tok {
                            Token::Register(reg_value) => *reg_value,
                            _ => {
                                panic!(
                                    "INVALID ARGUMENT FOR `JS` (EXPECTED REGISTER): {:?}",
                                    arg_tok
                                )
                            }
                        };
                        js_regs.push(arg);
                    }
                    tok_idx += 2;

                    // `js` form command
                    let js_cmd: Command = Command::Js(js_regs[0], js_regs[1]);
                    commands.push(js_cmd);
                }
                "jns" => {
                    // `jns` get args
                    let mut jns_regs: Vec<u64> = Vec::new();
                    for arg_idx in 1..3 {
                        let arg_tok: &Token = &text_tokens[tok_idx + arg_idx];
                        let arg: u64 = match arg_tok {
                            Token::Register(reg_value) => *reg_value,
                            _ => {
                                panic!(
                                    "INVALID ARGUMENT FOR `JNS` (EXPECTED REGISTER): {:?}",
                                    arg_tok
                                )
                            }
                        };
                        jns_regs.push(arg);
                    }
                    tok_idx += 2;

                    // `jns` form command
                    let jns_cmd: Command = Command::Jns(jns_regs[0], jns_regs[1]);
                    commands.push(jns_cmd);
                }
                "ld" => {
                    // `ld` get args
                    let mut ld_regs: Vec<u64> = Vec::new();
                    for arg_idx in 1..3 {
                        let arg_tok: &Token = &text_tokens[tok_idx + arg_idx];
                        let reg: u64 = match arg_tok {
                            Token::Register(reg_value) => *reg_value,
                            _ => {
                                panic!(
                                    "INVALID ARGUMENT FOR `LD` (EXPECTED REGISTER): {:?}",
                                    arg_tok
                                )
                            }
                        };
                        ld_regs.push(reg);
                    }
                    tok_idx += 2;

                    // `ld` form command
                    let ld_cmd: Command = Command::Ld(ld_regs[0], ld_regs[1]);
                    commands.push(ld_cmd);
                }
                "ldr" => {
                    // `ldr` get args
                    let mut ldr_regs: Vec<u64> = Vec::new();
                    for arg_idx in 1..4 {
                        let arg_tok: &Token = &text_tokens[tok_idx + arg_idx];
                        let reg: u64 = match arg_tok {
                            Token::Register(reg_value) => *reg_value,
                            _ => {
                                panic!(
                                    "INVALID ARGUMENT FOR `LDR` (EXPECTED REGISTER): {:?}",
                                    arg_tok
                                )
                            }
                        };
                        ldr_regs.push(reg);
                    }
                    tok_idx += 3;

                    // `ldr` form command
                    let ldr_cmd: Command = Command::Ldr(ldr_regs[0], ldr_regs[1], ldr_regs[2]);
                    commands.push(ldr_cmd);
                }
                "ldo" => {
                    // `ldo` get args
                    let mut ldo_regs: Vec<u64> = Vec::new();
                    for arg_idx in 1..3 {
                        let arg_tok: &Token = &text_tokens[tok_idx + arg_idx];
                        let reg: u64 = match arg_tok {
                            Token::Register(reg_value) => *reg_value,
                            _ => {
                                panic!(
                                    "INVALID ARGUMENT FOR `LDO` (EXPECTED REGISTER): {:?}",
                                    arg_tok
                                )
                            }
                        };
                        ldo_regs.push(reg);
                    }
                    let imm_tok: &Token = &text_tokens[tok_idx + 3];
                    let imm: u64 = match imm_tok {
                        Token::Immediate(imm_value) => *imm_value,
                        _ => panic!(
                            "INVALID ARGUMENT FOR `LDO` (EXPECTED IMMEDIATE): {:?}",
                            imm_tok
                        ),
                    };
                    tok_idx += 3;

                    // `ld` form command
                    let ldo_cmd: Command = Command::Ldo(ldo_regs[0], ldo_regs[1], imm);
                    commands.push(ldo_cmd);
                }
                "st" => {
                    // `st` get args
                    let mut st_regs: Vec<u64> = Vec::new();
                    for arg_idx in 1..3 {
                        let arg_tok: &Token = &text_tokens[tok_idx + arg_idx];
                        let reg: u64 = match arg_tok {
                            Token::Register(reg_value) => *reg_value,
                            _ => {
                                panic!(
                                    "INVALID ARGUMENT FOR `ST` (EXPECTED REGISTER): {:?}",
                                    arg_tok
                                )
                            }
                        };
                        st_regs.push(reg);
                    }
                    tok_idx += 2;

                    // `st` form command
                    let st_cmd: Command = Command::St(st_regs[0], st_regs[1]);
                    commands.push(st_cmd);
                }
                "str" => {
                    // `str` get args
                    let mut str_regs: Vec<u64> = Vec::new();
                    for arg_idx in 1..4 {
                        let arg_tok: &Token = &text_tokens[tok_idx + arg_idx];
                        let reg: u64 = match arg_tok {
                            Token::Register(reg_value) => *reg_value,
                            _ => {
                                panic!(
                                    "INVALID ARGUMENT FOR `STR` (EXPECTED REGISTER): {:?}",
                                    arg_tok
                                )
                            }
                        };
                        str_regs.push(reg);
                    }
                    tok_idx += 3;

                    // `str` form command
                    let str_cmd: Command = Command::Str(str_regs[0], str_regs[1], str_regs[2]);
                    commands.push(str_cmd);
                }
                "sto" => {
                    // `sto` get args
                    let mut sto_regs: Vec<u64> = Vec::new();
                    for arg_idx in 1..3 {
                        let arg_tok: &Token = &text_tokens[tok_idx + arg_idx];
                        let reg: u64 = match arg_tok {
                            Token::Register(reg_value) => *reg_value,
                            _ => {
                                panic!(
                                    "INVALID ARGUMENT FOR `STO` (EXPECTED REGISTER): {:?}",
                                    arg_tok
                                )
                            }
                        };
                        sto_regs.push(reg);
                    }
                    let imm_tok: &Token = &text_tokens[tok_idx + 3];
                    let imm: u64 = match imm_tok {
                        Token::Immediate(imm_value) => *imm_value,
                        _ => panic!(
                            "INVALID ARGUMENT FOR `STO` (EXPECTED IMMEDIATE): {:?}",
                            imm_tok
                        ),
                    };
                    tok_idx += 3;

                    // `sto` form command
                    let sto_cmd: Command = Command::Sto(sto_regs[0], sto_regs[1], imm);
                    commands.push(sto_cmd);
                }
                "call" => {
                    // `call` get arg
                    let rt_tok: &Token = &text_tokens[tok_idx + 1];
                    let rt: u64 = match rt_tok {
                        Token::Register(rt_value) => *rt_value,
                        _ => panic!(
                            "INVALID ARGUMENT FOR `CALL` (EXPECTED REGISTER): {:?}",
                            rt_tok
                        ),
                    };
                    tok_idx += 1;

                    // `call` form command
                    let call_cmd: Command = Command::Call(rt);
                    commands.push(call_cmd);
                }
                "ret" => {
                    // `ret` form command
                    let ret_cmd: Command = Command::Ret;
                    commands.push(ret_cmd);
                }
                "led" => {
                    // `led` get args
                    let ra_tok: &Token = &text_tokens[tok_idx + 1];
                    let ra: u64 = match ra_tok {
                        Token::Register(ra_value) => *ra_value,
                        _ => panic!(
                            "INVALID ARGUMENT FOR `LED` (EXPECTED REGISTER): {:?}",
                            ra_tok
                        ),
                    };
                    let imm_tok: &Token = &text_tokens[tok_idx + 2];
                    let imm: u64 = match imm_tok {
                        Token::Immediate(imm_value) => *imm_value,
                        _ => panic!(
                            "INVALID ARGUMENT FOR `LED` (EXPECTED IMMEDIATE): {:?}",
                            imm_tok
                        ),
                    };
                    tok_idx += 2;

                    // `led` form command
                    let led_cmd: Command = Command::Led(ra, imm != 0);
                    commands.push(led_cmd);
                }
                "leds" => {
                    // `leds` get args
                    let ra_tok: &Token = &text_tokens[tok_idx + 1];
                    let ra: u64 = match ra_tok {
                        Token::Register(ra_value) => *ra_value,
                        _ => panic!(
                            "INVALID ARGUMENT FOR `LEDS` (EXPECTED REGISTER): {:?}",
                            ra_tok
                        ),
                    };
                    tok_idx += 1;

                    // `leds` form command
                    let leds_cmd: Command = Command::Leds(ra);
                    commands.push(leds_cmd);
                }
                "rdsw" => {
                    // `rdsw` get args
                    let rt_tok: &Token = &text_tokens[tok_idx + 1];
                    let rt: u64 = match rt_tok {
                        Token::Register(rt_value) => *rt_value,
                        _ => panic!(
                            "INVALID ARGUMENT FOR `RDSW` (EXPECTED REGISTER): {:?}",
                            rt_tok
                        ),
                    };
                    tok_idx += 1;

                    // `rdsw` form command
                    let rdsw_cmd: Command = Command::Rdsw(rt);
                    commands.push(rdsw_cmd);
                }
                "push" => {
                    // `push` get arg
                    let ra_tok: &Token = &text_tokens[tok_idx + 1];
                    let ra: u64 = match ra_tok {
                        Token::Register(ra_value) => *ra_value,
                        _ => panic!(
                            "INVALID ARGUMENT FOR `PUSH` (EXPECTED REGISTER): {:?}",
                            ra_tok
                        ),
                    };
                    tok_idx += 1;

                    // `push` form command
                    let push_cmd: Command = Command::Push(ra);
                    commands.push(push_cmd);
                }
                "pop" => {
                    // `pop` get arg
                    let rt_tok: &Token = &text_tokens[tok_idx + 1];
                    let rt: u64 = match rt_tok {
                        Token::Register(rt_value) => *rt_value,
                        _ => panic!(
                            "INVALID ARGUMENT FOR `POP` (EXPECTED REGISTER): {:?}",
                            rt_tok
                        ),
                    };
                    tok_idx += 1;

                    // `pop` form command
                    let pop_cmd: Command = Command::Pop(rt);
                    commands.push(pop_cmd);
                }
                "wait" => {
                    // `wait` get arg
                    let ra_tok: &Token = &text_tokens[tok_idx + 1];
                    let ra: u64 = match ra_tok {
                        Token::Register(ra_value) => *ra_value,
                        _ => panic!(
                            "INVALID ARGUMENT FOR `WAIT` (EXPECTED REGISTER): {:?}",
                            ra_tok
                        ),
                    };
                    tok_idx += 1;

                    // `wait` form command
                    let wait_cmd: Command = Command::Wait(ra);
                    commands.push(wait_cmd);
                }
                "print" => {
                    // `print` get arg
                    let ra_tok: &Token = &text_tokens[tok_idx + 1];
                    let ra: u64 = match ra_tok {
                        Token::Register(ra_value) => *ra_value,
                        _ => panic!(
                            "INVALID ARGUMENT FOR `PRINT` (EXPECTED REGISTER): {:?}",
                            ra_tok
                        ),
                    };
                    tok_idx += 1;

                    // `print` form command
                    let print_cmd: Command = Command::Print(ra);
                    commands.push(print_cmd);
                }
                "movlb" => {
                    // `movlb` get args
                    let rt_tok: &Token = &text_tokens[tok_idx + 1];
                    let rt: u64 = match rt_tok {
                        Token::Register(rt_value) => *rt_value,
                        _ => panic!(
                            "INVALID ARGUMENT FOR `MOVLB` (EXPECTED REGISTER): {:?}",
                            rt_tok
                        ),
                    };
                    let label_tok: &Token = &text_tokens[tok_idx + 2];
                    let label: u64 = match label_tok {
                        Token::LabelRef(name) => *label_refs.get(name).unwrap(),
                        _ => panic!(
                            "INVALID ARGUMENT FOR `MOVLB` (EXPECTED LABEL): {:?}",
                            label_tok
                        ),
                    };
                    tok_idx += 2;

                    // `movlb` form command
                    let movlb_cmd: Command = Command::Movlb(rt, label);
                    commands.push(movlb_cmd);
                }
                "j" => {
                    // `j` get arg
                    let arg_tok: &Token = &text_tokens[tok_idx + 1];
                    let arg: u64 = match arg_tok {
                        Token::Register(rt_value) => *rt_value,
                        Token::LabelRef(name) => *label_refs.get(name).unwrap(),
                        _ => panic!(
                            "INVALID ARGUMENT FOR `J` (EXPECTED REGISTER OR LABEL): {:?}",
                            arg_tok
                        ),
                    };
                    let is_label_jmp: bool = match arg_tok {
                        Token::LabelRef(_) => true,
                        _ => false,
                    };
                    tok_idx += 1;

                    // `j` form command
                    let j_cmd: Command = Command::J(arg, is_label_jmp);
                    commands.push(j_cmd);
                }
                "end" => {
                    // `end` form command
                    let end_cmd: Command = Command::End;
                    commands.push(end_cmd);
                }
                other => panic!("INVALID INSTRUCTION: {:?}", other),
            },
            Token::Section(_) | Token::LabelDef(_) => {}
            other => panic!("UNREADABLE ISOLATED TOKEN: {:?}", other),
        };

        // Look at next token
        tok_idx += 1;
    }

    // `.data`
    let mut data: Vec<u64> = Vec::new();
    for token in data_tokens {
        match token {
            Token::Immediate(value) => data.push(value),
            Token::Section(_) | Token::LabelDef(_) => {}
            other => panic!("INVALID TOKEN IN DATA SECTION: {:?}", other),
        }
    }

    (commands, data)
}

// PREPROCESS

/*
 * Assembly program split up into `.text` and `.data`
 * sections.
 *
 * In the `hex` machine code format, it is beneficial
 * if data is stored after the program text in memory;
 * so, we rearrange the order in which we parse tokens
 * to resolve `.data` sections last.
 */
fn reorder_tokens(tokens: Vec<Token>) -> (Vec<Token>, Vec<Token>) {
    // Separate `.text` and `.data` tokens
    let mut text_tokens: Vec<Token> = vec![Token::Section(true)];
    let mut data_tokens: Vec<Token> = vec![Token::Section(false)];
    let mut in_text: bool = true;
    for token in tokens {
        match token {
            Token::Section(is_text) => in_text = is_text,
            _ => {
                // Only commit non-delimiting tokens
                if in_text {
                    text_tokens.push(token);
                } else {
                    data_tokens.push(token);
                }
            }
        }
    }

    (text_tokens, data_tokens)
}

// Turn label definitions -> usable memory addresses
fn resolve_labels(text_tokens: &Vec<Token>, data_tokens: &Vec<Token>) -> HashMap<String, u64> {
    let mut addr_count: u64 = 0;
    let mut label_refs: HashMap<String, u64> = HashMap::new();

    // `.text`
    for (token_idx, token) in text_tokens.iter().enumerate() {
        match token {
            Token::LabelDef(name) => {
                // Effective address and insert into map
                let addr: u64 = 2 * addr_count;
                label_refs.insert(name.clone(), addr);
            }
            Token::Instruction(ins) => match ins.as_str() {
                "push" | "pop" => addr_count += 2,
                "movlb" => addr_count += 2,
                "j" => {
                    let next: &Token = &text_tokens[token_idx + 1];
                    match next {
                        Token::LabelRef(_) => addr_count += 3,
                        Token::Register(_) => addr_count += 1,
                        _ => panic!("LABEL RESOLUTION FAILURE: UNCLEAR J PSEUDO"),
                    }
                }
                _ => addr_count += 1,
            },
            _ => {}
        }
    }

    // `.data`
    for token in data_tokens {
        match token {
            Token::LabelDef(name) => {
                // Effective address and insert into map
                let addr: u64 = 2 * addr_count;
                label_refs.insert(name.clone(), addr);
            }
            Token::Immediate(_) => addr_count += 1,
            _ => {}
        }
    }

    label_refs
}
