    .data
var_1:
    #0
var_2:
    #0
var_3:
    #0

    .text

func_0:
    push    r14                         // save link register
    push    r4                          // save callee saved register - r4
    push    r5                          // save callee saved register - r5
    push    r6                          // save callee saved register - r6
    movlb   r4, var_1                 // r4 = address of called function's it
    st      r1, r4                      // mem[r4] = r1 - store passed in value of it in memory
    // LC 0 
    movl    r4, #0                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // STORE 2 
    pop     r4                      // r4 = stack pop()
    movlb   r5, var_2             // r5 = address of var 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
label_0:
    // LOAD 1 
    movlb   r4, var_1             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // LC 0 
    movl    r4, #0                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // Greater than 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    sub     r4, r4, r5      // r4 = op1 - op2 
    movlb   r6, cmp_0     // r6 = if (op1 <= op2) branch 
    js      r6, r4          // jump if r4 is negative (meaning less than)
    jz      r6, r4          // jump if r4 is zero (meaning equal)
    movl    r4, #1          // r4 = 1 if op1 > op2 
    j       skip_cmp_0
cmp_0:
    movl    r4, #0          // r4 = 0 if op1 <= op2 
skip_cmp_0:
    push    r4              // store result of comparison on top of stack 
    // JMP IF FALSE 
    pop     r4              // r4 = stack pop() 
    movlb   r5, label_1   
    jz      r5, r4           // skip the body of the loop 
    // LOAD 2 
    movlb   r4, var_2             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // LOAD 1 
    movlb   r4, var_1             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // ADD 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    add     r4, r4, r5      // r4 = op1 + op2 
    push    r4              // store sum on top of stack 
    // STORE 2 
    pop     r4                      // r4 = stack pop()
    movlb   r5, var_2             // r5 = address of var 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
    // LOAD 1 
    movlb   r4, var_1             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // LC 1 
    movl    r4, #1                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SUB 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    sub     r4, r4, r5      // r4 = op1 - op2 
    push    r4              // store sum on top of stack 
    // STORE 1 
    pop     r4                      // r4 = stack pop()
    movlb   r5, var_1             // r5 = address of var 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
    // JMP 
    j label_0
label_1:
    // LOAD 2 
    movlb   r4, var_2             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // RET 
    pop     r1              // r1 = return value which should be on top of stack 
    pop     r6              // restore r6
    pop     r5              // restore r5
    pop     r4              // restore r4
    pop     r14             // restore link register
    ret                     // return 
    // LC 0 
    movl    r4, #0                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // RET 
    pop     r1              // r1 = return value which should be on top of stack 
    pop     r6              // restore r6
    pop     r5              // restore r5
    pop     r4              // restore r4
    pop     r14             // restore link register
    ret                     // return 

main:
    push    r14                         // save link register
    push    r4                          // save callee saved register - r4
    push    r5                          // save callee saved register - r5
    push    r6                          // save callee saved register - r6
    // PUSH 0 
    movlb   r5, func_0            // r5 = address of a function 
    push    r5                      // store address of function on top of stack 
    // STORE 3 
    pop     r4                      // r4 = stack pop()
    movlb   r5, var_3             // r5 = address of var 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
    // LOAD 3 
    movlb   r4, var_3             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // LC 2 
    movl    r4, #160                // r4 = constant 
    movh    r4, #134                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // CALL 
    pop     r1                  // r1 (parameter register) = it (new it) 
    pop     r7                  // r7 = address of function 
    call    r7              // call the function in r7 
    push    r1              // push return value onto stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // EXIT 
    pop     r6              // restore r6
    pop     r5              // restore r5
    pop     r4              // restore r4
    pop     r14             // restore link register
    movl    r1, #0          // indicate success 
    ret                     // return 0 
    movl    r1, #0                      // indicate success
    ret                                 // return 0
    end
