    .data
var_0:
    #0

    .text
main:
    push    r14                         // save link register
    push    r4                          // save callee saved register - r4
    push    r5                          // save callee saved register - r5
    push    r6                          // save callee saved register - r6
    // LC 0 
    movl    r4, #1                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // JMP IF TRUE 
    pop     r4              // r4 = stack pop() 
    movlb   r5, label_1   
    jnz     r5, r4          // skip the else if true 
    // JMP 
    j label_0
label_1:
    // LC 0 
    movl    r4, #1                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
label_0:
    // LC 1 
    movl    r4, #0                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // JMP IF TRUE 
    pop     r4              // r4 = stack pop() 
    movlb   r5, label_3   
    jnz     r5, r4          // skip the else if true 
    // JMP 
    j label_2
label_3:
    // LC 1 
    movl    r4, #0                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
label_2:
    // LC 0 
    movl    r4, #1                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // JMP IF TRUE 
    pop     r4              // r4 = stack pop() 
    movlb   r5, label_5   
    jnz     r5, r4          // skip the else if true 
    // LC 5 
    movl    r4, #5                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 6 
    movl    r4, #6                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 7 
    movl    r4, #7                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // JMP 
    j label_4
label_5:
    // LC 0 
    movl    r4, #1                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 2 
    movl    r4, #2                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 3 
    movl    r4, #3                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 4 
    movl    r4, #4                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
label_4:
    // LC 1 
    movl    r4, #0                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // STORE 0 
    pop     r4                      // r4 = stack pop()
    movlb   r5, var_0             // r5 = address of var 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
label_6:
    // LOAD 0 
    movlb   r4, var_0             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // LC 3 
    movl    r4, #3                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // Less than 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    sub     r4, r4, r5      // r4 = op1 - op2 
    movlb   r6, cmp_0     // r6 = if (op1 < op2) branch 
    js      r6, r4          // jump if r4 is negative 
    movl    r4, #0          // r4 = 0 if op1 >= op2 
    j       skip_cmp_0
cmp_0:
    movl    r4, #1          // r4 = 1 if op1 < op2 
skip_cmp_0:
    push    r4              // store result of comparison on top of stack 
    // JMP IF FALSE 
    pop     r4              // r4 = stack pop() 
    movlb   r5, label_7   
    jz      r5, r4           // skip the body of the loop 
    // LOAD 0 
    movlb   r4, var_0             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LOAD 0 
    movlb   r4, var_0             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // LC 0 
    movl    r4, #1                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // ADD 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    add     r4, r4, r5      // r4 = op1 + op2 
    push    r4              // store sum on top of stack 
    // STORE 0 
    pop     r4                      // r4 = stack pop()
    movlb   r5, var_0             // r5 = address of var 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
    // JMP 
    j label_6
label_7:
    // EXIT 
    pop     r6              // restore r6
    pop     r5              // restore r5
    pop     r4              // restore r4
    pop     r14             // restore link register
    end                                 // halt instruction for rgsm 

