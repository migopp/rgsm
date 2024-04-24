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
    // PUSH 0 
    movlb   r5, func_0            // r5 = address of a function 
    push    r5                      // store address of function on top of stack 
    // STORE 1 
    pop     r4                      // r4 = stack pop()
    movlb   r5, var_1             // r5 = address of var 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
    // LOAD 1 
    movlb   r4, var_1             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // LC 1 
    movl    r4, #5                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // CALL 
    movlb   r14, location_for_rtrn_0        // set link reg to return addr 
    pop     r1                  // r1 (parameter register) = it (new it) 
    pop     r7                  // r7 = address of function 
    call    r7              // call the function in r7 
location_for_rtrn_0: 
    push    r1              // push return value onto stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LOAD 1 
    movlb   r4, var_1             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // LC 2 
    movl    r4, #7                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // CALL 
    movlb   r14, location_for_rtrn_1        // set link reg to return addr 
    pop     r1                  // r1 (parameter register) = it (new it) 
    pop     r7                  // r7 = address of function 
    call    r7              // call the function in r7 
location_for_rtrn_1: 
    push    r1              // push return value onto stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // EXIT 
    pop     r6              // restore r6
    pop     r5              // restore r5
    pop     r4              // restore r4
    pop     r14             // restore link register
    end                                 // halt instruction for rgsm 

func_0:
    push    r14                         // save link register
    push    r4                          // save callee saved register - r4
    push    r5                          // save callee saved register - r5
    push    r6                          // save callee saved register - r6
    movlb   r4, var_0                 // r4 = address of called function's it
    st      r1, r4                      // mem[r4] = r1 - store passed in value of it in memory
    // LOAD 0 
    movlb   r4, var_0             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
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

