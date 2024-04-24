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
    movl    r4, #3                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // STORE 0 
    pop     r4                      // r4 = stack pop()
    movlb   r5, var_0             // r5 = address of var 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
    // LC 1 
    movl    r4, #4                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // STORE 1 
    pop     r4                      // r4 = stack pop()
    movlb   r5, var_1             // r5 = address of var 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
    // LOAD 0 
    movlb   r4, var_0             // r4 = address of var 
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
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #1             // led r4 
    // LOAD 0 
    movlb   r4, var_0             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // LOAD 1 
    movlb   r4, var_1             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // SUB 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    sub     r4, r4, r5      // r4 = op1 - op2 
    push    r4              // store sum on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // RDSW 
    rdsw r4                 // rdsw r4 
    movlb   r5, var_0             // r5 = address of var 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
    // RDSW 
    rdsw r4                 // rdsw r4 
    movlb   r5, var_1             // r5 = address of var 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
    // LOAD 0 
    movlb   r4, var_0             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // LOAD 1 
    movlb   r4, var_1             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // MULT 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    mul     r4, r4, r5      // r4 = op1 * op2 
    push    r4              // store product on top of stack 
    // WRITE LED 
    pop r4                  // r4 = stack pop() 
    leds r4                 // led r4 
    // LOAD 0 
    movlb   r4, var_0             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // LOAD 1 
    movlb   r4, var_1             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // DIV 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    div     r4, r4, r5      // r4 = op1 / op2 
    push    r4              // store quotient on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // EXIT 
    pop     r6              // restore r6
    pop     r5              // restore r5
    pop     r4              // restore r4
    pop     r14             // restore link register
    end                                 // halt instruction for rgsm 

