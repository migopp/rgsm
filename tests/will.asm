    .data

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
    // LC 1 
    movl    r4, #5                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // MULT 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    mul     r4, r4, r5      // r4 = op1 * op2 
    push    r4              // store product on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // EXIT 
    pop     r6              // restore r6
    pop     r5              // restore r5
    pop     r4              // restore r4
    pop     r14             // restore link register
    end                                 // halt instruction for rgsm 

