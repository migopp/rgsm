use crate::data::*;

pub fn assemble(commands: Vec<Command>, data: Vec<u64>) -> String {
    // Boilerplate
    let mut assembled_string: String = "@0\n".to_string();

    // Interpret commands
    for command in commands {
        match command {
            Command::Sub(rt, ra, rb) => {
                // `sub` form
                let rt_h: String = format!("{:x}", rt);
                let ra_h: String = format!("{:x}", ra);
                let rb_h: String = format!("{:x}", rb);
                let sub_ins: String = format!("0{}{}{}\n", ra_h, rb_h, rt_h);

                // `sub` write
                assembled_string.push_str(&sub_ins);
            }
            Command::Add(rt, ra, rb) => {
                // `add` form
                let rt_h: String = format!("{:x}", rt);
                let ra_h: String = format!("{:x}", ra);
                let rb_h: String = format!("{:x}", rb);
                let add_ins: String = format!("1{}{}{}\n", ra_h, rb_h, rt_h);

                // `add` write
                assembled_string.push_str(&add_ins);
            }
            Command::Mul(rt, ra, rb) => {
                // `mul` form
                let rt_h: String = format!("{:x}", rt);
                let ra_h: String = format!("{:x}", ra);
                let rb_h: String = format!("{:x}", rb);
                let mul_ins: String = format!("2{}{}{}\n", ra_h, rb_h, rt_h);

                // `mul` write
                assembled_string.push_str(&mul_ins);
            }
            Command::Div(rt, ra, rb) => {
                // `div` form
                let rt_h: String = format!("{:x}", rt);
                let ra_h: String = format!("{:x}", ra);
                let rb_h: String = format!("{:x}", rb);
                let div_ins: String = format!("3{}{}{}\n", ra_h, rb_h, rt_h);

                // `div` write
                assembled_string.push_str(&div_ins);
            }
            Command::Mod(rt, ra, rb) => {
                // `mod` form
                let rt_h: String = format!("{:x}", rt);
                let ra_h: String = format!("{:x}", ra);
                let rb_h: String = format!("{:x}", rb);
                let mod_ins: String = format!("4{}{}{}\n", ra_h, rb_h, rt_h);

                // `div` write
                assembled_string.push_str(&mod_ins);
            }
            Command::And(rt, ra, rb) => {
                // `and` form
                let rt_h: String = format!("{:x}", rt);
                let ra_h: String = format!("{:x}", ra);
                let rb_h: String = format!("{:x}", rb);
                let and_ins: String = format!("5{}{}{}\n", ra_h, rb_h, rt_h);

                // `and` write
                assembled_string.push_str(&and_ins);
            }
            Command::Movl(rt, imm) => {
                // `movl` form
                let rt_h: String = format!("{:x}", rt);
                // Check immediate size
                if imm > ((2 << 9) - 1) {
                    panic!("IMMEDIATE {} TOO LARGE", imm);
                }
                let mut imm_h: String = format!("{:x}", imm);
                // Extend immediate
                if imm_h.len() < 2 {
                    imm_h = format!("0{}", imm_h);
                }
                let movl_ins: String = format!("8{}{}\n", imm_h, rt_h);

                // `movl` write
                assembled_string.push_str(&movl_ins);
            }
            Command::Movh(rt, imm) => {
                // `movh` form
                let rt_h: String = format!("{:x}", rt);
                // Check immediate size
                if imm > ((2 << 9) - 1) {
                    panic!("IMMEDIATE {} TOO LARGE", imm);
                }
                let mut imm_h: String = format!("{:x}", imm);
                // Extend immediate
                if imm_h.len() < 2 {
                    imm_h = format!("0{}", imm_h);
                }
                let movh_ins: String = format!("9{}{}\n", imm_h, rt_h);

                // `movh` write
                assembled_string.push_str(&movh_ins);
            }
            Command::Jz(rt, ra) => {
                // `jz` form
                let rt_h: String = format!("{:x}", rt);
                let ra_h: String = format!("{:x}", ra);
                let jz_ins: String = format!("e{}0{}\n", ra_h, rt_h);

                // `jz` write
                assembled_string.push_str(&jz_ins);
            }
            Command::Jnz(rt, ra) => {
                // `jnz` form
                let rt_h: String = format!("{:x}", rt);
                let ra_h: String = format!("{:x}", ra);
                let jnz_ins: String = format!("e{}1{}\n", ra_h, rt_h);

                // `jnz` write
                assembled_string.push_str(&jnz_ins);
            }
            Command::Js(rt, ra) => {
                // `js` form
                let rt_h: String = format!("{:x}", rt);
                let ra_h: String = format!("{:x}", ra);
                let js_ins: String = format!("e{}2{}\n", ra_h, rt_h);

                // `js` write
                assembled_string.push_str(&js_ins);
            }
            Command::Jns(rt, ra) => {
                // `jns` form
                let rt_h: String = format!("{:x}", rt);
                let ra_h: String = format!("{:x}", ra);
                let jns_ins: String = format!("e{}3{}\n", ra_h, rt_h);

                // `jns` write
                assembled_string.push_str(&jns_ins);
            }
            Command::Ld(rt, ra) => {
                // `ld` form
                let rt_h: String = format!("{:x}", rt);
                let ra_h: String = format!("{:x}", ra);
                let ld_ins: String = format!("f{}0{}\n", ra_h, rt_h);

                // `ld` write
                assembled_string.push_str(&ld_ins);
            }
            Command::Ldr(rt, ra, rb) => {
                // `ldr` form
                let rt_h: String = format!("{:x}", rt);
                let ra_h: String = format!("{:x}", ra);
                let rb_h: String = format!("{:x}", rb);
                let ldr_ins: String = format!("6{}{}{}\n", ra_h, rb_h, rt_h);

                // `ldr` write
                assembled_string.push_str(&ldr_ins);
            }
            Command::Ldo(rt, ra, imm) => {
                // `ldo` form
                let rt_h: String = format!("{:x}", rt);
                let ra_h: String = format!("{:x}", ra);
                // Check immediate size
                if imm > ((2 << 5) - 1) {
                    panic!("IMMEDIATE {} TOO LARGE", imm);
                }
                let imm_h: String = format!("{:x}", imm);
                let ldo_ins: String = format!("b{}{}{}\n", ra_h, imm_h, rt_h);

                // `ldo` write
                assembled_string.push_str(&ldo_ins);
            }
            Command::St(rt, ra) => {
                // `st` form
                let rt_h: String = format!("{:x}", rt);
                let ra_h: String = format!("{:x}", ra);
                let st_ins: String = format!("f{}1{}\n", ra_h, rt_h);

                // `st` write
                assembled_string.push_str(&st_ins);
            }
            Command::Str(rt, ra, rb) => {
                // `str` form
                let rt_h: String = format!("{:x}", rt);
                let ra_h: String = format!("{:x}", ra);
                let rb_h: String = format!("{:x}", rb);
                let str_ins: String = format!("7{}{}{}\n", ra_h, rb_h, rt_h);

                // `str` write
                assembled_string.push_str(&str_ins);
            }
            Command::Sto(rt, ra, imm) => {
                // `sto` form
                let rt_h: String = format!("{:x}", rt);
                let ra_h: String = format!("{:x}", ra);
                // Check immediate size
                if imm > ((2 << 5) - 1) {
                    panic!("IMMEDIATE {} TOO LARGE", imm);
                }
                let imm_h: String = format!("{:x}", imm);
                let sto_ins: String = format!("b{}{}{}\n", ra_h, imm_h, rt_h);

                // `sto` write
                assembled_string.push_str(&sto_ins);
            }
            Command::Call(rt) => {
                // `call` form
                let rt_h: String = format!("{:x}", rt);
                let call_ins: String = format!("e08{}\n", rt_h);

                // `call` write
                assembled_string.push_str(&call_ins);
            }
            Command::Ret => {
                // `ret` form
                let ret_ins: String = "e090\n".to_string();

                // `ret` write
                assembled_string.push_str(&ret_ins);
            }
            // \/ These are pseduo-instructions for now
            Command::Push(ra) => {
                // Assembles to:
                // sub r15, r15, r2
                // st ra, r15
                let ra_h: String = format!("{:x}", ra);
                let sub_ins: String = "0f2f\n".to_string(); // sub
                let st_ins: String = format!("f{}1f\n", ra_h); // st

                // `sub` and `st` write
                assembled_string.push_str(&sub_ins);
                assembled_string.push_str(&st_ins);
            }
            Command::Pop(rt) => {
                // Assembles to:
                // ld rt, r15
                // add r15, r15, r2
                let rt_h: String = format!("{:x}", rt);
                let ld_ins: String = format!("ff0{}\n", rt_h); // ld
                let add_ins: String = "1f2f\n".to_string(); // add

                // `ld` and `add` write
                assembled_string.push_str(&ld_ins);
                assembled_string.push_str(&add_ins);
            }
            Command::Print(ra) => {
                // Assembles to:
                // add r0, ra, r0
                let ra_h: String = format!("{:x}", ra);
                let add_ins: String = format!("1{}00\n", ra_h);

                // `add` write
                assembled_string.push_str(&add_ins);
            }
            Command::Movlb(rt, loc) => {
                // Assembles into:
                // movl ra, loc[7:0]
                // movh ra, loc[15:8]
                let rt_h: String = format!("{:x}", rt);
                // Check loc size
                if loc > ((2 << 17) - 1) {
                    panic!("LOCATION {} OUT OF RANGE", loc);
                }
                let mut loc_h_lo: String = format!("{:x}", (loc & 0xff));
                let mut loc_h_hi: String = format!("{:x}", (loc >> 8));
                // Extend immediates
                if loc_h_lo.len() < 2 {
                    loc_h_lo = format!("0{}", loc_h_lo);
                }
                if loc_h_hi.len() < 2 {
                    loc_h_hi = format!("0{}", loc_h_hi);
                }
                let movl_ins: String = format!("8{}{}\n", loc_h_lo, rt_h);
                let movh_ins: String = format!("9{}{}\n", loc_h_hi, rt_h);

                // `movl` and `movh` write
                assembled_string.push_str(&movl_ins);
                assembled_string.push_str(&movh_ins);
            }
            Command::J(loc, is_label_jmp) => {
                if is_label_jmp {
                    // Assembles to:
                    // movl r7, loc[7:0]
                    // movh r7, loc[15:8]
                    // jz r7, r0
                    // Check loc size
                    if loc > ((2 << 17) - 1) {
                        panic!("LOCATION {} OUT OF RANGE", loc);
                    }
                    let mut loc_h_lo: String = format!("{:x}", (loc & 0xff));
                    let mut loc_h_hi: String = format!("{:x}", (loc >> 8));
                    // Extend immediates
                    if loc_h_lo.len() < 2 {
                        loc_h_lo = format!("0{}", loc_h_lo);
                    }
                    if loc_h_hi.len() < 2 {
                        loc_h_hi = format!("0{}", loc_h_hi);
                    }
                    let movl_ins: String = format!("8{}7\n", loc_h_lo);
                    let movh_ins: String = format!("9{}7\n", loc_h_hi);
                    let jz_ins: String = "e007\n".to_string();

                    // `movl`, `movh`, `jz` write
                    assembled_string.push_str(&movl_ins);
                    assembled_string.push_str(&movh_ins);
                    assembled_string.push_str(&jz_ins);
                } else {
                    // Assembles into:
                    // jz rt, r0
                    let rt_h: String = format!("{:x}", loc);
                    let jz_ins: String = format!("e00{}\n", rt_h);

                    // `jz` write
                    assembled_string.push_str(&jz_ins);
                }
            }
            Command::End => {
                let end_ins: String = "ffff\n".to_string();
                assembled_string.push_str(&end_ins);
            }
        }
    }

    // Interpret data
    for data_raw in data {
        if data_raw > ((1 << 17) - 1) {
            panic!(
                "DATA SECTION MEMBER {} TOO LARGE; MUST BE LESS THAN 2^17",
                data_raw
            );
        }

        // Format in hex and append
        let data_line: String = format!("{:x}\n", data_raw);
        assembled_string.push_str(&data_line);
    }

    assembled_string
}
