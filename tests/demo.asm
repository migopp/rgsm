    .data
var_0:
    #0
var_1:
    #0
var_2:
    #0
var_3:
    #0
var_4:
    #0
var_5:
    #0
var_6:
    #0
var_7:
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
    // STORE 3 
    pop     r4                      // r4 = stack pop()
    movlb   r5, var_3             // r5 = address of var 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
label_14:
    // LC 11 
    movl    r4, #1                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // JMP IF FALSE 
    pop     r4              // r4 = stack pop() 
    movlb   r5, label_15   
    jz      r5, r4           // skip the body of the loop 
    // LC 12 
    movl    r4, #0                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 12 
    movl    r4, #0                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // STORE 4 
    pop     r4                      // r4 = stack pop()
    movlb   r5, var_4             // r5 = address of var 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
label_10:
    // LOAD 4 
    movlb   r4, var_4             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // LC 12 
    movl    r4, #0                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
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
    // JMP IF FALSE 
    pop     r4              // r4 = stack pop() 
    movlb   r5, label_11   
    jz      r5, r4           // skip the body of the loop 
    // RDSW 
    rdsw r4                 // rdsw r4 
    movlb   r5, var_4             // r5 = address of var 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
    // JMP 
    j label_10
label_11:
    // LC 12 
    movl    r4, #0                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // STORE 5 
    pop     r4                      // r4 = stack pop()
    movlb   r5, var_5             // r5 = address of var 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
    // ADDROF 
    movlb   r4, var_5         // r4 = address of identifier 
    push    r4                  // push address of identifier onto stack 
    // STORE 6 
    pop     r4                      // r4 = stack pop()
    movlb   r5, var_6             // r5 = address of var 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
    // LOAD 3 
    movlb   r4, var_3             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // LOAD 6 
    movlb   r4, var_6             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // CALL 
    movlb   r14, location_for_rtrn_3        // set link reg to return addr 
    pop     r1                  // r1 (parameter register) = it (new it) 
    pop     r7                  // r7 = address of function 
    call    r7              // call the function in r7 
location_for_rtrn_3: 
    push    r1              // push return value onto stack 
    // STORE 7 
    pop     r4                      // r4 = stack pop()
    movlb   r5, var_7             // r5 = address of var 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
    // LOAD 5 
    movlb   r4, var_5             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // LC 12 
    movl    r4, #0                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
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
    // JMP IF TRUE 
    pop     r4              // r4 = stack pop() 
    movlb   r5, label_13   
    jnz     r5, r4          // skip the else if true 
    // LC 17 
    movl    r4, #119                // r4 = constant 
    movh    r4, #119                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // JMP 
    j label_12
label_13:
    // LC 1 
    movl    r4, #255                // r4 = constant 
    movh    r4, #255                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
label_12:
    // LC 18 
    movl    r4, #136                // r4 = constant 
    movh    r4, #19                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // JMP 
    j label_14
label_15:
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
    // LC 0 
    movl    r4, #12                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // STORE 1 
    pop     r4                      // r4 = stack pop()
    movlb   r5, var_1             // r5 = address of var 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
    // LOAD 1 
    movlb   r4, var_1             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 1 
    movl    r4, #255                // r4 = constant 
    movh    r4, #255                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // WRITE LED 
    pop r4                  // r4 = stack pop() 
    leds r4                 // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 3 
    movl    r4, #9                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 4 
    movl    r4, #8                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 5 
    movl    r4, #7                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 6 
    movl    r4, #6                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 7 
    movl    r4, #5                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 8 
    movl    r4, #4                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 9 
    movl    r4, #3                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 10 
    movl    r4, #2                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 11 
    movl    r4, #1                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 12 
    movl    r4, #0                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // RDSW 
    rdsw r4                 // rdsw r4 
    movlb   r5, var_2             // r5 = address of var 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
    // LOAD 1 
    movlb   r4, var_1             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // LOAD 2 
    movlb   r4, var_2             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // Not equal to 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    sub     r4, r4, r5      // r4 = op1 - op2 
    movlb   r6, cmp_2     // r6 = if (op1 == op2) branch 
    jz      r6, r4          // jump if r4 is zero 
    movl    r4, #1          // r4 = 1 if op1 != op2 
    j       skip_cmp_2
cmp_2:
    movl    r4, #0          // r4 = 0 if op1 == op2 
skip_cmp_2:
    push    r4              // store result of comparison on top of stack 
    // JMP IF TRUE 
    pop     r4              // r4 = stack pop() 
    movlb   r5, label_1   
    jnz     r5, r4          // skip the else if true 
    // JMP 
    j label_0
label_1:
    // LC 12 
    movl    r4, #0                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // REFSET 
    pop     r4                      // r4 = stack pop()
    movlb   r5, var_0              // r5 = address of the memory address 
    ld      r5, r5                  // r5 = the value of the memory address 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
    // LC 12 
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
label_0:
    // LC 13 
    movl    r4, #27                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // STORE 1 
    pop     r4                      // r4 = stack pop()
    movlb   r5, var_1             // r5 = address of var 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
    // LOAD 1 
    movlb   r4, var_1             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 1 
    movl    r4, #255                // r4 = constant 
    movh    r4, #255                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // WRITE LED 
    pop r4                  // r4 = stack pop() 
    leds r4                 // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 3 
    movl    r4, #9                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 4 
    movl    r4, #8                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 5 
    movl    r4, #7                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 6 
    movl    r4, #6                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 7 
    movl    r4, #5                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 8 
    movl    r4, #4                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 9 
    movl    r4, #3                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 10 
    movl    r4, #2                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 11 
    movl    r4, #1                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 12 
    movl    r4, #0                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // RDSW 
    rdsw r4                 // rdsw r4 
    movlb   r5, var_2             // r5 = address of var 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
    // LOAD 1 
    movlb   r4, var_1             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // LOAD 2 
    movlb   r4, var_2             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // Not equal to 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    sub     r4, r4, r5      // r4 = op1 - op2 
    movlb   r6, cmp_3     // r6 = if (op1 == op2) branch 
    jz      r6, r4          // jump if r4 is zero 
    movl    r4, #1          // r4 = 1 if op1 != op2 
    j       skip_cmp_3
cmp_3:
    movl    r4, #0          // r4 = 0 if op1 == op2 
skip_cmp_3:
    push    r4              // store result of comparison on top of stack 
    // JMP IF TRUE 
    pop     r4              // r4 = stack pop() 
    movlb   r5, label_3   
    jnz     r5, r4          // skip the else if true 
    // JMP 
    j label_2
label_3:
    // LC 12 
    movl    r4, #0                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // REFSET 
    pop     r4                      // r4 = stack pop()
    movlb   r5, var_0              // r5 = address of the memory address 
    ld      r5, r5                  // r5 = the value of the memory address 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
    // LC 12 
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
label_2:
    // LC 14 
    movl    r4, #126                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // STORE 1 
    pop     r4                      // r4 = stack pop()
    movlb   r5, var_1             // r5 = address of var 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
    // LOAD 1 
    movlb   r4, var_1             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 1 
    movl    r4, #255                // r4 = constant 
    movh    r4, #255                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // WRITE LED 
    pop r4                  // r4 = stack pop() 
    leds r4                 // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 3 
    movl    r4, #9                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 4 
    movl    r4, #8                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 5 
    movl    r4, #7                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 6 
    movl    r4, #6                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 7 
    movl    r4, #5                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 8 
    movl    r4, #4                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 9 
    movl    r4, #3                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 10 
    movl    r4, #2                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 11 
    movl    r4, #1                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 12 
    movl    r4, #0                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // RDSW 
    rdsw r4                 // rdsw r4 
    movlb   r5, var_2             // r5 = address of var 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
    // LOAD 1 
    movlb   r4, var_1             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // LOAD 2 
    movlb   r4, var_2             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // Not equal to 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    sub     r4, r4, r5      // r4 = op1 - op2 
    movlb   r6, cmp_4     // r6 = if (op1 == op2) branch 
    jz      r6, r4          // jump if r4 is zero 
    movl    r4, #1          // r4 = 1 if op1 != op2 
    j       skip_cmp_4
cmp_4:
    movl    r4, #0          // r4 = 0 if op1 == op2 
skip_cmp_4:
    push    r4              // store result of comparison on top of stack 
    // JMP IF TRUE 
    pop     r4              // r4 = stack pop() 
    movlb   r5, label_5   
    jnz     r5, r4          // skip the else if true 
    // JMP 
    j label_4
label_5:
    // LC 12 
    movl    r4, #0                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // REFSET 
    pop     r4                      // r4 = stack pop()
    movlb   r5, var_0              // r5 = address of the memory address 
    ld      r5, r5                  // r5 = the value of the memory address 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
    // LC 12 
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
label_4:
    // LC 15 
    movl    r4, #85                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // STORE 1 
    pop     r4                      // r4 = stack pop()
    movlb   r5, var_1             // r5 = address of var 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
    // LOAD 1 
    movlb   r4, var_1             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 1 
    movl    r4, #255                // r4 = constant 
    movh    r4, #255                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // WRITE LED 
    pop r4                  // r4 = stack pop() 
    leds r4                 // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 3 
    movl    r4, #9                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 4 
    movl    r4, #8                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 5 
    movl    r4, #7                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 6 
    movl    r4, #6                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 7 
    movl    r4, #5                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 8 
    movl    r4, #4                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 9 
    movl    r4, #3                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 10 
    movl    r4, #2                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 11 
    movl    r4, #1                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 12 
    movl    r4, #0                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // RDSW 
    rdsw r4                 // rdsw r4 
    movlb   r5, var_2             // r5 = address of var 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
    // LOAD 1 
    movlb   r4, var_1             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // LOAD 2 
    movlb   r4, var_2             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // Not equal to 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    sub     r4, r4, r5      // r4 = op1 - op2 
    movlb   r6, cmp_5     // r6 = if (op1 == op2) branch 
    jz      r6, r4          // jump if r4 is zero 
    movl    r4, #1          // r4 = 1 if op1 != op2 
    j       skip_cmp_5
cmp_5:
    movl    r4, #0          // r4 = 0 if op1 == op2 
skip_cmp_5:
    push    r4              // store result of comparison on top of stack 
    // JMP IF TRUE 
    pop     r4              // r4 = stack pop() 
    movlb   r5, label_7   
    jnz     r5, r4          // skip the else if true 
    // JMP 
    j label_6
label_7:
    // LC 12 
    movl    r4, #0                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // REFSET 
    pop     r4                      // r4 = stack pop()
    movlb   r5, var_0              // r5 = address of the memory address 
    ld      r5, r5                  // r5 = the value of the memory address 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
    // LC 12 
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
label_6:
    // LC 16 
    movl    r4, #249                // r4 = constant 
    movh    r4, #255                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // STORE 1 
    pop     r4                      // r4 = stack pop()
    movlb   r5, var_1             // r5 = address of var 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
    // LOAD 1 
    movlb   r4, var_1             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 1 
    movl    r4, #255                // r4 = constant 
    movh    r4, #255                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // WRITE LED 
    pop r4                  // r4 = stack pop() 
    leds r4                 // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 3 
    movl    r4, #9                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 4 
    movl    r4, #8                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 5 
    movl    r4, #7                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 6 
    movl    r4, #6                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 7 
    movl    r4, #5                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 8 
    movl    r4, #4                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 9 
    movl    r4, #3                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 10 
    movl    r4, #2                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 11 
    movl    r4, #1                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // LC 2 
    movl    r4, #244                // r4 = constant 
    movh    r4, #1                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SLEEP 
    pop r4                  // r4 = stack pop() 
    wait r4                 // wait r4 
    // LC 12 
    movl    r4, #0                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SET LED 
    pop r4                  // r4 = stack pop() 
    led r4, #0             // led r4 
    // RDSW 
    rdsw r4                 // rdsw r4 
    movlb   r5, var_2             // r5 = address of var 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
    // LOAD 1 
    movlb   r4, var_1             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // LOAD 2 
    movlb   r4, var_2             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // Not equal to 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    sub     r4, r4, r5      // r4 = op1 - op2 
    movlb   r6, cmp_6     // r6 = if (op1 == op2) branch 
    jz      r6, r4          // jump if r4 is zero 
    movl    r4, #1          // r4 = 1 if op1 != op2 
    j       skip_cmp_6
cmp_6:
    movl    r4, #0          // r4 = 0 if op1 == op2 
skip_cmp_6:
    push    r4              // store result of comparison on top of stack 
    // JMP IF TRUE 
    pop     r4              // r4 = stack pop() 
    movlb   r5, label_9   
    jnz     r5, r4          // skip the else if true 
    // JMP 
    j label_8
label_9:
    // LC 12 
    movl    r4, #0                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // REFSET 
    pop     r4                      // r4 = stack pop()
    movlb   r5, var_0              // r5 = address of the memory address 
    ld      r5, r5                  // r5 = the value of the memory address 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
    // LC 12 
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
label_8:
    // LC 11 
    movl    r4, #1                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // REFSET 
    pop     r4                      // r4 = stack pop()
    movlb   r5, var_0              // r5 = address of the memory address 
    ld      r5, r5                  // r5 = the value of the memory address 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
    // LC 11 
    movl    r4, #1                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // RET 
    pop     r1              // r1 = return value which should be on top of stack 
    pop     r6              // restore r6
    pop     r5              // restore r5
    pop     r4              // restore r4
    pop     r14             // restore link register
    ret                     // return 
    // LC 12 
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

