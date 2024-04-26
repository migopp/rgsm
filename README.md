# rgsm 🦀

An assembler for the Gheith ISA written in Rust.

# Contents

1. [Introduction](#introduction)
2. [Getting Started](#getting-started)
    - [Installation](#installation)
    - [Prerequisites](#prerequisites)
3. [Writing Assembly](#writing-assembly)
    - [Comments](#comments)
    - [Sections](#sections)
    - [Label Definitions](#label-definitions)
    - [Instructions](#instructions)
        - [Register References](#register-references)
        - [Immediates](#immediates)
        - [Label References](#label-references)
    - [Pseudo-Instructions](#pseudo-instructions)
    - [Entry Point](#entry-point)
    - [Skeleton](#skeleton)


# Introduction

This is a sibling of the `gasm` project.

Note that `rgsm` is a contribution for the final project of Dr. Gheith's CS 429H Computer Architecture class. For students completing pipelining, it is recommended to use `gasm` and `dasm`, as they contain more pertinent features to completion of the project.

`rgsm` is built and maintained as a part of the Gheith toolchain.

# Getting Started

`rgsm` is a simple Rust binary. It is released on [Cargo](https://crates.io/) (the official Rust package manager), so install it with the command below:

## Installation

```
cargo install rgsm
```

## Prerequisites

1. Rust 2021

# Writing Assembly

In this section, you will learn how to write a Gheith assembly program.

## Comments

Comments can be placed anywhere in the assembly program with the `//` prefix. The parser will ignore the rest of the line after this token is parsed.

## Sections

An assembly program is split into two main "sections" -- `.text` and `.data`. In reality, a valid assembly program can have any number of these sections; however, every program is fundamentally comprised of these parts.

The `.text` section is rather straightforward: it contains all instructions to execute.

```
.text
main:
    print #97
    print #98
    print #99
    // ...
    end
```

The `.data` section will contain data that will be placed in memory. The Gheith architecture is 16-bit, so each entry can represent
one of $2^{17} - 1$ values: { $0$, $1$, ... $2^{17} - 1$ }.

```
.data
a:
    #97
b:
    #98
c:
    #99
// ...
```

Notice that each number is prefixed by an `#` in this example and the one above. This will be explained more later, but each number
(and, in fact, most everything) must label itself as what it represents. In these cases, these numbers are immediate decimal values.

## Label Definitions

Programs are really just data stored in memory. Thus, in assembly, if we want to reference a set of instructions (or really anything in our program), we must do so by using some unique identifier (a label).

```
.text
my_program_starts_here:
    // ...
```

These labels are really just numbers -- locations in memory where a specific part of the program will reside. You can use them in any circumstance you would use another number like so:

```
// @0 -> Memory location word 0
.text
my_program_starts_here:
    // ...
    // This instruction jumps to the beginning of the program!
    j my_program_starts_here
    // ...
```

A label definition is declared like above, with a `:` token afterwards to dictate that it is a definition. A label reference will omit this colon. Labels are unique, you cannot have two labels with the same name that reference different parts of the program. For example, the following code would be invalid:

```
// @12 -> Memory location word 12
label_1:
    print #97 // <- label_1 references word 12
label_1:
    print #98 // <- label_1 references word 13 (?)
              // hopefully it is clear why this makes no sense
    // ...
    // just in case it isn't clear
    j label_1 // where should this jump to?
              // word 12 or 13?
```

Just remember that a label really just represents the memory location of the instruction/data that is directly beneath it.

## Instructions

`rgsm` supports an extended Gheith ISA. The specific instructions it supports can be found in a supporting document.

Here is the general form of an instruction: `<INSTRUCTION NAME> [F1] [F2] [F3]`.

Instructions have up to 3 fields, whose existence and types are dictated by the ISA document. They can be one of three types: register, immediate, or label.

### Register References

Take the following `add` instruction as an example:

```
add r3, r4, r5
```

This operation adds the values of `r4` and `r5` and stores the result in `r3`.

Register references are prefixed with the letter `r`. There are 16 registers in the Gheith architecture, `r0`-`r15`. Their designations are:

| Register Num. | Designation | Notes |
| ------------- | -------------- | -------------- |
| 0 | Zero/Print Register | Writing `x` to this register prints `x` |
| 1 | Return/Param Register | N/A |
| 2 | Two Register | This register stores the value $2$ |
| 3-6 | Generic Caller-Saved | N/A |
| 7 | Jump Location Register | Overwritten by jumps to labels |
| 8-13 | Generic Callee-Saved | N/A |
| 14 | Link Register | N/A |
| 15 | SP Register | Initialized to 0xFFFF |

### Immediates

Immediates are decimal values with range depending on the instruction. They are prefixed with a `#`. That's basically all there is to it.

### Label References

Labels can be used any time an immediate is expected (although, it may not always semantically make sense to do so, like in the `ldo` and `sto` instructions). Labels can be referenced before or after their definitions, as they are preprocessed.

## Pseudo-Instructions

Along with the officially-supported extended Gheith ISA instructions, `rgsm` also supports a number of "pseudo-instructions", or more human-readable instructions that assemble to simple Gheith instructions. They are listed below:

| Instruction Name | Field(s) | Functionality |
| ------------- | -------------- | -------------- |
| `print` | <ra: Register> | `add r0, ra, r0` |
| `movlb` | <rt: Register>, <label: Label> | `movl ra, label[7:0]`, `movh ra, label[15:8]` |
| `j` | <rt: Register> | `jz rt, r0` |
| `j` | <label: Label> | `movl r7, label[7:0]`, `movh r7, label[15:8]`, `jz r7, r0` |


## Entry Point

The Gheith architecture follows Von Neumann architecture principles of text sharing address space with data. The way that `rgsm` organizes programs adheres to this.

The program text is placed at memory address 0, the entry point is the first instruction in the first `.text` section -- this is the instruction that will be placed at address 0. If you look at the assembled output, you will see:

```
@0
// first instruction
// ... and so on ...
```

The `@0` dictates that the following block is sequentially ordered starting at address 0.

The `.text` sections are fused and placed first in memory, then the `.data` sections are fused and placed last. Thus, the resulting machine code will be of the form:

```
@0
// first instruction
// second instruction
// ...
// end of `.text`
// first data entry
// second data entry
// ...
// end of `.data`
```

## Skeleton

The skeleton of a valid assembly program is:

```
.data
    // Place your relevant data here!

.text
    // Place your instructions here!
    end
```
