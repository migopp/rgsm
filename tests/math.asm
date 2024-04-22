    .data
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
var_8:
    #0
var_9:
    #0
var_10:
    #0
var_11:
    #0

    .text
main:
    push    r14                         // save link register
    push    r4                          // save callee saved register - r4
    push    r5                          // save callee saved register - r5
    push    r6                          // save callee saved register - r6
    // LOAD 1 
    movlb   r4, var_1             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // LOAD 2 
    movlb   r4, var_2             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // SUB 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    sub     r4, r4, r5      // r4 = op1 - op2 
    push    r4              // store sum on top of stack 
    // LOAD 3 
    movlb   r4, var_3             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // SUB 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    sub     r4, r4, r5      // r4 = op1 - op2 
    push    r4              // store sum on top of stack 
    // STORE 4 
    pop     r4                      // r4 = stack pop()
    movlb   r5, var_4             // r5 = address of var 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
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
    // LC 2 
    movl    r4, #4                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // LC 3 
    movl    r4, #2                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // DIV 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    div     r4, r4, r5      // r4 = op1 / op2 
    push    r4              // store quotient on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 4 
    movl    r4, #14                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // LC 5 
    movl    r4, #6                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // MOD 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    mod     r4, r4, r5      // r4 = op1 % op2 
    push    r4              // store modulus on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LOAD 5 
    movlb   r4, var_5             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // LOAD 6 
    movlb   r4, var_6             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // SUB 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    sub     r4, r4, r5      // r4 = op1 - op2 
    push    r4              // store sum on top of stack 
    // STORE 4 
    pop     r4                      // r4 = stack pop()
    movlb   r5, var_4             // r5 = address of var 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
    // LC 8 
    movl    r4, #16                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 9 
    movl    r4, #8                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // LC 10 
    movl    r4, #1                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // SUB 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    sub     r4, r4, r5      // r4 = op1 - op2 
    push    r4              // store sum on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LOAD 7 
    movlb   r4, var_7             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // LOAD 8 
    movlb   r4, var_8             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // SUB 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    sub     r4, r4, r5      // r4 = op1 - op2 
    push    r4              // store sum on top of stack 
    // STORE 4 
    pop     r4                      // r4 = stack pop()
    movlb   r5, var_4             // r5 = address of var 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
    // LC 0 
    movl    r4, #3                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // LC 0 
    movl    r4, #3                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // Less than or Equal to 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    sub     r4, r4, r5      // r4 = op1 - op2 
    movlb   r6, cmp_0     // r6 = if (op1 <= op2) branch 
    js      r6, r4          // jump if r4 is negative (meaning less than)
    jz      r6, r4          // jump if r4 is zero (meaning equal)
    movl    r4, #0          // r4 = 0 if op1 > op2 
    j       skip_cmp_0
cmp_0:
    movl    r4, #1          // r4 = 1 if op1 <= op2 
skip_cmp_0:
    push    r4              // store result of comparison on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 0 
    movl    r4, #3                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // LC 2 
    movl    r4, #4                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // Less than or Equal to 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    sub     r4, r4, r5      // r4 = op1 - op2 
    movlb   r6, cmp_1     // r6 = if (op1 <= op2) branch 
    js      r6, r4          // jump if r4 is negative (meaning less than)
    jz      r6, r4          // jump if r4 is zero (meaning equal)
    movl    r4, #0          // r4 = 0 if op1 > op2 
    j       skip_cmp_1
cmp_1:
    movl    r4, #1          // r4 = 1 if op1 <= op2 
skip_cmp_1:
    push    r4              // store result of comparison on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 2 
    movl    r4, #4                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // LC 0 
    movl    r4, #3                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // Less than or Equal to 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    sub     r4, r4, r5      // r4 = op1 - op2 
    movlb   r6, cmp_2     // r6 = if (op1 <= op2) branch 
    js      r6, r4          // jump if r4 is negative (meaning less than)
    jz      r6, r4          // jump if r4 is zero (meaning equal)
    movl    r4, #0          // r4 = 0 if op1 > op2 
    j       skip_cmp_2
cmp_2:
    movl    r4, #1          // r4 = 1 if op1 <= op2 
skip_cmp_2:
    push    r4              // store result of comparison on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 0 
    movl    r4, #3                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // LC 2 
    movl    r4, #4                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // Less than 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    sub     r4, r4, r5      // r4 = op1 - op2 
    movlb   r6, cmp_3     // r6 = if (op1 < op2) branch 
    js      r6, r4          // jump if r4 is negative 
    movl    r4, #0          // r4 = 0 if op1 >= op2 
    j       skip_cmp_3
cmp_3:
    movl    r4, #1          // r4 = 1 if op1 < op2 
skip_cmp_3:
    push    r4              // store result of comparison on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 2 
    movl    r4, #4                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // LC 0 
    movl    r4, #3                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // Less than 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    sub     r4, r4, r5      // r4 = op1 - op2 
    movlb   r6, cmp_4     // r6 = if (op1 < op2) branch 
    js      r6, r4          // jump if r4 is negative 
    movl    r4, #0          // r4 = 0 if op1 >= op2 
    j       skip_cmp_4
cmp_4:
    movl    r4, #1          // r4 = 1 if op1 < op2 
skip_cmp_4:
    push    r4              // store result of comparison on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 2 
    movl    r4, #4                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // LC 0 
    movl    r4, #3                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // Greater than or Equal to 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    sub     r4, r4, r5      // r4 = op1 - op2 
    movlb   r6, cmp_5     // r6 = if (op1 < op2) branch 
    js      r6, r4          // jump if r4 is negative 
    movl    r4, #1          // r4 = 1 if op1 >= op2 
    j       skip_cmp_5
cmp_5:
    movl    r4, #0          // r4 = 0 if op1 < op2 
skip_cmp_5:
    push    r4              // store result of comparison on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 2 
    movl    r4, #4                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // LC 2 
    movl    r4, #4                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // Greater than or Equal to 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    sub     r4, r4, r5      // r4 = op1 - op2 
    movlb   r6, cmp_6     // r6 = if (op1 < op2) branch 
    js      r6, r4          // jump if r4 is negative 
    movl    r4, #1          // r4 = 1 if op1 >= op2 
    j       skip_cmp_6
cmp_6:
    movl    r4, #0          // r4 = 0 if op1 < op2 
skip_cmp_6:
    push    r4              // store result of comparison on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 0 
    movl    r4, #3                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // LC 2 
    movl    r4, #4                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // Greater than or Equal to 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    sub     r4, r4, r5      // r4 = op1 - op2 
    movlb   r6, cmp_7     // r6 = if (op1 < op2) branch 
    js      r6, r4          // jump if r4 is negative 
    movl    r4, #1          // r4 = 1 if op1 >= op2 
    j       skip_cmp_7
cmp_7:
    movl    r4, #0          // r4 = 0 if op1 < op2 
skip_cmp_7:
    push    r4              // store result of comparison on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 2 
    movl    r4, #4                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // LC 0 
    movl    r4, #3                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // Greater than 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    sub     r4, r4, r5      // r4 = op1 - op2 
    movlb   r6, cmp_8     // r6 = if (op1 <= op2) branch 
    js      r6, r4          // jump if r4 is negative (meaning less than)
    jz      r6, r4          // jump if r4 is zero (meaning equal)
    movl    r4, #1          // r4 = 1 if op1 > op2 
    j       skip_cmp_8
cmp_8:
    movl    r4, #0          // r4 = 0 if op1 <= op2 
skip_cmp_8:
    push    r4              // store result of comparison on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 0 
    movl    r4, #3                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // LC 2 
    movl    r4, #4                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // Greater than 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    sub     r4, r4, r5      // r4 = op1 - op2 
    movlb   r6, cmp_9     // r6 = if (op1 <= op2) branch 
    js      r6, r4          // jump if r4 is negative (meaning less than)
    jz      r6, r4          // jump if r4 is zero (meaning equal)
    movl    r4, #1          // r4 = 1 if op1 > op2 
    j       skip_cmp_9
cmp_9:
    movl    r4, #0          // r4 = 0 if op1 <= op2 
skip_cmp_9:
    push    r4              // store result of comparison on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 0 
    movl    r4, #3                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // LC 0 
    movl    r4, #3                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // Equal to 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    sub     r4, r4, r5      // r4 = op1 - op2 
    movlb   r6, cmp_10     // r6 = if (op1 == op2) branch 
    jz      r6, r4          // jump if r4 is zero 
    movl    r4, #0          // r4 = 0 if op1 != op2 
    j       skip_cmp_10
cmp_10:
    movl    r4, #1          // r4 = 1 if op1 == op2 
skip_cmp_10:
    push    r4              // store result of comparison on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 0 
    movl    r4, #3                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // LC 2 
    movl    r4, #4                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // Equal to 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    sub     r4, r4, r5      // r4 = op1 - op2 
    movlb   r6, cmp_11     // r6 = if (op1 == op2) branch 
    jz      r6, r4          // jump if r4 is zero 
    movl    r4, #0          // r4 = 0 if op1 != op2 
    j       skip_cmp_11
cmp_11:
    movl    r4, #1          // r4 = 1 if op1 == op2 
skip_cmp_11:
    push    r4              // store result of comparison on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 0 
    movl    r4, #3                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // LC 0 
    movl    r4, #3                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // Not equal to 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    sub     r4, r4, r5      // r4 = op1 - op2 
    movlb   r6, cmp_12     // r6 = if (op1 == op2) branch 
    jz      r6, r4          // jump if r4 is zero 
    movl    r4, #1          // r4 = 1 if op1 != op2 
    j       skip_cmp_12
cmp_12:
    movl    r4, #0          // r4 = 0 if op1 == op2 
skip_cmp_12:
    push    r4              // store result of comparison on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 0 
    movl    r4, #3                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // LC 2 
    movl    r4, #4                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // Not equal to 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    sub     r4, r4, r5      // r4 = op1 - op2 
    movlb   r6, cmp_13     // r6 = if (op1 == op2) branch 
    jz      r6, r4          // jump if r4 is zero 
    movl    r4, #1          // r4 = 1 if op1 != op2 
    j       skip_cmp_13
cmp_13:
    movl    r4, #0          // r4 = 0 if op1 == op2 
skip_cmp_13:
    push    r4              // store result of comparison on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 10 
    movl    r4, #1                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // LC 0 
    movl    r4, #3                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // Bitwise And 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    and     r4, r4, r5      // r4 = op1 & op2 
    push    r4              // store sum on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 0 
    movl    r4, #3                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // LC 1 
    movl    r4, #5                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // Bitwise And 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    and     r4, r4, r5      // r4 = op1 & op2 
    push    r4              // store sum on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 1 
    movl    r4, #5                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // LC 6 
    movl    r4, #7                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // Bitwise And 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    and     r4, r4, r5      // r4 = op1 & op2 
    push    r4              // store sum on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LOAD 9 
    movlb   r4, var_9             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // LOAD 8 
    movlb   r4, var_8             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // SUB 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    sub     r4, r4, r5      // r4 = op1 - op2 
    push    r4              // store sum on top of stack 
    // STORE 4 
    pop     r4                      // r4 = stack pop()
    movlb   r5, var_4             // r5 = address of var 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
    // LC 3 
    movl    r4, #2                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // CLAMP 
    pop     r4              // r4 = stack pop() 
    movl    r5, #1          // r5 = 1 
    sub     r4, r4, r5      // r4 = r4 - 1 
    movlb   r6, cmp_14     // r6 = cmp label to jump to for <= 
    js      r6, r4          // jump if r4 < 1 
    jz      r6, r4          // jump if r4 = 1 
    movl    r4, #1          // r4 <= 1 ? r4 : 1 - ensures 1/0 
    j       skip_cmp_14
cmp_14:
    movl    r4, #0          // r4 <= 1 ? r4 : 1 - ensures 1/0 
skip_cmp_14:
    push    r4              // put 1/0 back on the stack 
    // AND 
    ld      r4, r15                         // r4 = top of stack 
    movlb   r5, label_0                   // r5 = label to jump to if false 
    jz      r5, r4                          // jump to the label if r4 is false 
    pop     r4                              // pop if true 
    // LC 3 
    movl    r4, #2                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // CLAMP 
    pop     r4              // r4 = stack pop() 
    movl    r5, #1          // r5 = 1 
    sub     r4, r4, r5      // r4 = r4 - 1 
    movlb   r6, cmp_15     // r6 = cmp label to jump to for <= 
    js      r6, r4          // jump if r4 < 1 
    jz      r6, r4          // jump if r4 = 1 
    movl    r4, #1          // r4 <= 1 ? r4 : 1 - ensures 1/0 
    j       skip_cmp_15
cmp_15:
    movl    r4, #0          // r4 <= 1 ? r4 : 1 - ensures 1/0 
skip_cmp_15:
    push    r4              // put 1/0 back on the stack 
label_0:
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 3 
    movl    r4, #2                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // CLAMP 
    pop     r4              // r4 = stack pop() 
    movl    r5, #1          // r5 = 1 
    sub     r4, r4, r5      // r4 = r4 - 1 
    movlb   r6, cmp_16     // r6 = cmp label to jump to for <= 
    js      r6, r4          // jump if r4 < 1 
    jz      r6, r4          // jump if r4 = 1 
    movl    r4, #1          // r4 <= 1 ? r4 : 1 - ensures 1/0 
    j       skip_cmp_16
cmp_16:
    movl    r4, #0          // r4 <= 1 ? r4 : 1 - ensures 1/0 
skip_cmp_16:
    push    r4              // put 1/0 back on the stack 
    // AND 
    ld      r4, r15                         // r4 = top of stack 
    movlb   r5, label_1                   // r5 = label to jump to if false 
    jz      r5, r4                          // jump to the label if r4 is false 
    pop     r4                              // pop if true 
    // LC 11 
    movl    r4, #0                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // CLAMP 
    pop     r4              // r4 = stack pop() 
    movl    r5, #1          // r5 = 1 
    sub     r4, r4, r5      // r4 = r4 - 1 
    movlb   r6, cmp_17     // r6 = cmp label to jump to for <= 
    js      r6, r4          // jump if r4 < 1 
    jz      r6, r4          // jump if r4 = 1 
    movl    r4, #1          // r4 <= 1 ? r4 : 1 - ensures 1/0 
    j       skip_cmp_17
cmp_17:
    movl    r4, #0          // r4 <= 1 ? r4 : 1 - ensures 1/0 
skip_cmp_17:
    push    r4              // put 1/0 back on the stack 
label_1:
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 11 
    movl    r4, #0                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // CLAMP 
    pop     r4              // r4 = stack pop() 
    movl    r5, #1          // r5 = 1 
    sub     r4, r4, r5      // r4 = r4 - 1 
    movlb   r6, cmp_18     // r6 = cmp label to jump to for <= 
    js      r6, r4          // jump if r4 < 1 
    jz      r6, r4          // jump if r4 = 1 
    movl    r4, #1          // r4 <= 1 ? r4 : 1 - ensures 1/0 
    j       skip_cmp_18
cmp_18:
    movl    r4, #0          // r4 <= 1 ? r4 : 1 - ensures 1/0 
skip_cmp_18:
    push    r4              // put 1/0 back on the stack 
    // AND 
    ld      r4, r15                         // r4 = top of stack 
    movlb   r5, label_2                   // r5 = label to jump to if false 
    jz      r5, r4                          // jump to the label if r4 is false 
    pop     r4                              // pop if true 
    // LC 3 
    movl    r4, #2                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // CLAMP 
    pop     r4              // r4 = stack pop() 
    movl    r5, #1          // r5 = 1 
    sub     r4, r4, r5      // r4 = r4 - 1 
    movlb   r6, cmp_19     // r6 = cmp label to jump to for <= 
    js      r6, r4          // jump if r4 < 1 
    jz      r6, r4          // jump if r4 = 1 
    movl    r4, #1          // r4 <= 1 ? r4 : 1 - ensures 1/0 
    j       skip_cmp_19
cmp_19:
    movl    r4, #0          // r4 <= 1 ? r4 : 1 - ensures 1/0 
skip_cmp_19:
    push    r4              // put 1/0 back on the stack 
label_2:
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 11 
    movl    r4, #0                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // CLAMP 
    pop     r4              // r4 = stack pop() 
    movl    r5, #1          // r5 = 1 
    sub     r4, r4, r5      // r4 = r4 - 1 
    movlb   r6, cmp_20     // r6 = cmp label to jump to for <= 
    js      r6, r4          // jump if r4 < 1 
    jz      r6, r4          // jump if r4 = 1 
    movl    r4, #1          // r4 <= 1 ? r4 : 1 - ensures 1/0 
    j       skip_cmp_20
cmp_20:
    movl    r4, #0          // r4 <= 1 ? r4 : 1 - ensures 1/0 
skip_cmp_20:
    push    r4              // put 1/0 back on the stack 
    // AND 
    ld      r4, r15                         // r4 = top of stack 
    movlb   r5, label_3                   // r5 = label to jump to if false 
    jz      r5, r4                          // jump to the label if r4 is false 
    pop     r4                              // pop if true 
    // LC 11 
    movl    r4, #0                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // CLAMP 
    pop     r4              // r4 = stack pop() 
    movl    r5, #1          // r5 = 1 
    sub     r4, r4, r5      // r4 = r4 - 1 
    movlb   r6, cmp_21     // r6 = cmp label to jump to for <= 
    js      r6, r4          // jump if r4 < 1 
    jz      r6, r4          // jump if r4 = 1 
    movl    r4, #1          // r4 <= 1 ? r4 : 1 - ensures 1/0 
    j       skip_cmp_21
cmp_21:
    movl    r4, #0          // r4 <= 1 ? r4 : 1 - ensures 1/0 
skip_cmp_21:
    push    r4              // put 1/0 back on the stack 
label_3:
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 3 
    movl    r4, #2                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // CLAMP 
    pop     r4              // r4 = stack pop() 
    movl    r5, #1          // r5 = 1 
    sub     r4, r4, r5      // r4 = r4 - 1 
    movlb   r6, cmp_22     // r6 = cmp label to jump to for <= 
    js      r6, r4          // jump if r4 < 1 
    jz      r6, r4          // jump if r4 = 1 
    movl    r4, #1          // r4 <= 1 ? r4 : 1 - ensures 1/0 
    j       skip_cmp_22
cmp_22:
    movl    r4, #0          // r4 <= 1 ? r4 : 1 - ensures 1/0 
skip_cmp_22:
    push    r4              // put 1/0 back on the stack 
    // OR 
    ld      r4, r15                         // r4 = top of stack 
    movlb   r5, label_4                   // r5 = label to jump to if true 
    jnz     r5, r4                         // jump to the label if r4 is true 
    pop     r4                              // pop if false 
    // LC 3 
    movl    r4, #2                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // CLAMP 
    pop     r4              // r4 = stack pop() 
    movl    r5, #1          // r5 = 1 
    sub     r4, r4, r5      // r4 = r4 - 1 
    movlb   r6, cmp_23     // r6 = cmp label to jump to for <= 
    js      r6, r4          // jump if r4 < 1 
    jz      r6, r4          // jump if r4 = 1 
    movl    r4, #1          // r4 <= 1 ? r4 : 1 - ensures 1/0 
    j       skip_cmp_23
cmp_23:
    movl    r4, #0          // r4 <= 1 ? r4 : 1 - ensures 1/0 
skip_cmp_23:
    push    r4              // put 1/0 back on the stack 
label_4:
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 3 
    movl    r4, #2                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // CLAMP 
    pop     r4              // r4 = stack pop() 
    movl    r5, #1          // r5 = 1 
    sub     r4, r4, r5      // r4 = r4 - 1 
    movlb   r6, cmp_24     // r6 = cmp label to jump to for <= 
    js      r6, r4          // jump if r4 < 1 
    jz      r6, r4          // jump if r4 = 1 
    movl    r4, #1          // r4 <= 1 ? r4 : 1 - ensures 1/0 
    j       skip_cmp_24
cmp_24:
    movl    r4, #0          // r4 <= 1 ? r4 : 1 - ensures 1/0 
skip_cmp_24:
    push    r4              // put 1/0 back on the stack 
    // OR 
    ld      r4, r15                         // r4 = top of stack 
    movlb   r5, label_5                   // r5 = label to jump to if true 
    jnz     r5, r4                         // jump to the label if r4 is true 
    pop     r4                              // pop if false 
    // LC 11 
    movl    r4, #0                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // CLAMP 
    pop     r4              // r4 = stack pop() 
    movl    r5, #1          // r5 = 1 
    sub     r4, r4, r5      // r4 = r4 - 1 
    movlb   r6, cmp_25     // r6 = cmp label to jump to for <= 
    js      r6, r4          // jump if r4 < 1 
    jz      r6, r4          // jump if r4 = 1 
    movl    r4, #1          // r4 <= 1 ? r4 : 1 - ensures 1/0 
    j       skip_cmp_25
cmp_25:
    movl    r4, #0          // r4 <= 1 ? r4 : 1 - ensures 1/0 
skip_cmp_25:
    push    r4              // put 1/0 back on the stack 
label_5:
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 11 
    movl    r4, #0                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // CLAMP 
    pop     r4              // r4 = stack pop() 
    movl    r5, #1          // r5 = 1 
    sub     r4, r4, r5      // r4 = r4 - 1 
    movlb   r6, cmp_26     // r6 = cmp label to jump to for <= 
    js      r6, r4          // jump if r4 < 1 
    jz      r6, r4          // jump if r4 = 1 
    movl    r4, #1          // r4 <= 1 ? r4 : 1 - ensures 1/0 
    j       skip_cmp_26
cmp_26:
    movl    r4, #0          // r4 <= 1 ? r4 : 1 - ensures 1/0 
skip_cmp_26:
    push    r4              // put 1/0 back on the stack 
    // OR 
    ld      r4, r15                         // r4 = top of stack 
    movlb   r5, label_6                   // r5 = label to jump to if true 
    jnz     r5, r4                         // jump to the label if r4 is true 
    pop     r4                              // pop if false 
    // LC 3 
    movl    r4, #2                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // CLAMP 
    pop     r4              // r4 = stack pop() 
    movl    r5, #1          // r5 = 1 
    sub     r4, r4, r5      // r4 = r4 - 1 
    movlb   r6, cmp_27     // r6 = cmp label to jump to for <= 
    js      r6, r4          // jump if r4 < 1 
    jz      r6, r4          // jump if r4 = 1 
    movl    r4, #1          // r4 <= 1 ? r4 : 1 - ensures 1/0 
    j       skip_cmp_27
cmp_27:
    movl    r4, #0          // r4 <= 1 ? r4 : 1 - ensures 1/0 
skip_cmp_27:
    push    r4              // put 1/0 back on the stack 
label_6:
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 11 
    movl    r4, #0                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // CLAMP 
    pop     r4              // r4 = stack pop() 
    movl    r5, #1          // r5 = 1 
    sub     r4, r4, r5      // r4 = r4 - 1 
    movlb   r6, cmp_28     // r6 = cmp label to jump to for <= 
    js      r6, r4          // jump if r4 < 1 
    jz      r6, r4          // jump if r4 = 1 
    movl    r4, #1          // r4 <= 1 ? r4 : 1 - ensures 1/0 
    j       skip_cmp_28
cmp_28:
    movl    r4, #0          // r4 <= 1 ? r4 : 1 - ensures 1/0 
skip_cmp_28:
    push    r4              // put 1/0 back on the stack 
    // OR 
    ld      r4, r15                         // r4 = top of stack 
    movlb   r5, label_7                   // r5 = label to jump to if true 
    jnz     r5, r4                         // jump to the label if r4 is true 
    pop     r4                              // pop if false 
    // LC 11 
    movl    r4, #0                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // CLAMP 
    pop     r4              // r4 = stack pop() 
    movl    r5, #1          // r5 = 1 
    sub     r4, r4, r5      // r4 = r4 - 1 
    movlb   r6, cmp_29     // r6 = cmp label to jump to for <= 
    js      r6, r4          // jump if r4 < 1 
    jz      r6, r4          // jump if r4 = 1 
    movl    r4, #1          // r4 <= 1 ? r4 : 1 - ensures 1/0 
    j       skip_cmp_29
cmp_29:
    movl    r4, #0          // r4 <= 1 ? r4 : 1 - ensures 1/0 
skip_cmp_29:
    push    r4              // put 1/0 back on the stack 
label_7:
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LOAD 10 
    movlb   r4, var_10             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // LOAD 11 
    movlb   r4, var_11             // r4 = address of var 
    ld      r4, r4                  // r4 = value of var 
    push    r4                      // store value of var on top of stack 
    // SUB 
    pop     r5              // r5 = stack pop() = op2 
    pop     r4              // r4 = stack pop() = op1 
    sub     r4, r4, r5      // r4 = op1 - op2 
    push    r4              // store sum on top of stack 
    // STORE 4 
    pop     r4                      // r4 = stack pop()
    movlb   r5, var_4             // r5 = address of var 
    st      r4, r5                  // mem[x5] = r4 = mem[address of var] = stack pop()
    // LC 0 
    movl    r4, #3                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // POP 
    pop     r4                      // r4 = stack pop() 
    // LC 2 
    movl    r4, #4                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // POP 
    pop     r4                      // r4 = stack pop() 
    // LC 1 
    movl    r4, #5                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // LC 1 
    movl    r4, #5                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // POP 
    pop     r4                      // r4 = stack pop() 
    // LC 12 
    movl    r4, #10                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // POP 
    pop     r4                      // r4 = stack pop() 
    // LC 13 
    movl    r4, #12                // r4 = constant 
    movh    r4, #0                // r4 = full 16-bit constant 
    push    r4                      // store constant on top of stack 
    // PRINT 
    pop     r4                      // r4 = stack pop() 
    print   r4 
    // EXIT 
    pop     r6              // restore r6
    pop     r5              // restore r5
    pop     r4              // restore r4
    pop     r14             // restore link register
    end                                 // halt instruction for rgsm 
