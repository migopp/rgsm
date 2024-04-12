// Namespaces
//use std::collections::HashMap;

/*
 * Responsible for assembling the asm text into Gheith ISA machine code
 */
pub fn assemble(text: String) {
    let (data_section, text_section) = split_sections(&text);

    println!("{}\n\n{}", data_section, text_section);
}

/*
 * Split program text into conventional sections
 */
fn split_sections(text: &str) -> (&str, &str) {
    // Find text section
    if let Some(split_idx) = text.find(".text") {
        let (data_section, text_section) = text.split_at(split_idx);

        // TODO: Remove .data and .text from substrings

        (data_section, text_section)
    } else {
        // No text section; invalid asm
        panic!("COULD NOT FIND TEXT SECTION IN ASM FILE");
    }
}

/*
 * Construct internal representation of .data
 */
/*fn construct_data(data_section: String) -> HashMap<String, i32> {
    let mut data_map = HashMap::new();

    // TODO: Map data label -> data

    data_map
}*/
