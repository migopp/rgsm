    .data
var_0:
    #0
var_1:
    #0

    .text
main:
    push    r14                         // save link register
    push    r4                          // save callee saved register - r4
    push    r5                          // save callee saved register - r5
    push    r6                          // save callee saved register - r6
    // LC 0 
    movl    r4, #5                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // STORE 0 
    pop     r4                      // r4 = stack pop()
    movlb   r5, var_0             // r5 = address of var 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
    // ADDROF 
    movlb   r4, var_0         // r4 = address of identifier 
    push    r4                  // push address of identifier onto stack 
    // STORE 1 
    pop     r4                      // r4 = stack pop()
    movlb   r5, var_1             // r5 = address of var 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
    // LOAD 0 
    movlb   r4, var_0             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 0 
    movl    r4, #5                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // DEREF 
    movlb   r4, var_1         // r4 = address of identifier 
    ld      r4, r4              // r4 = value of variable (which should be a memory address) 
    ld      r4, r4              // r4 = value at that memory address 
    push    r4                  // push address of identifier onto stack 
    // MULT 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    mul     r4, r4, r5      // r4 = op1 * op2 
    push    r4              // store product on top of stack 
    // LC 1 
    movl    r4, #3                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // ADD 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    add     r4, r4, r5      // r4 = op1 + op2 
    push    r4              // store sum on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 0 
    movl    r4, #5                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // DEREF 
    movlb   r4, var_1         // r4 = address of identifier 
    ld      r4, r4              // r4 = value of variable (which should be a memory address) 
    ld      r4, r4              // r4 = value at that memory address 
    push    r4                  // push address of identifier onto stack 
    // MULT 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    mul     r4, r4, r5      // r4 = op1 * op2 
    push    r4              // store product on top of stack 
    // LC 1 
    movl    r4, #3                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // ADD 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    add     r4, r4, r5      // r4 = op1 + op2 
    push    r4              // store sum on top of stack 
    // LOAD 0 
    movlb   r4, var_0             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // Equal to 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    sub     r4, r4, r5      // r4 = op1 - op2 
    movlb   r6, cmp_0     // r6 = if (op1 == op2) branch 
    jz      r6, r4          // jump if r4 is zero 
    movl    r4, #0          // r4 = 0 if op1 != op2 
    j       skip_cmp_0
cmp_0:
    movl    r4, #1          // r4 = 1 if op1 == op2 
skip_cmp_0:
    push    r4              // store result of comparison on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LOAD 1 
    movlb   r4, var_1             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // ADDROF 
    movlb   r4, var_0         // r4 = address of identifier 
    push    r4                  // push address of identifier onto stack 
    // Equal to 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    sub     r4, r4, r5      // r4 = op1 - op2 
    movlb   r6, cmp_1     // r6 = if (op1 == op2) branch 
    jz      r6, r4          // jump if r4 is zero 
    movl    r4, #0          // r4 = 0 if op1 != op2 
    j       skip_cmp_1
cmp_1:
    movl    r4, #1          // r4 = 1 if op1 == op2 
skip_cmp_1:
    push    r4              // store result of comparison on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // EXIT 
    pop     r6              // restore r6
    pop     r5              // restore r5
    pop     r4              // restore r4
    pop     r14             // restore link register
    end                                 // halt instruction for rgsm 

