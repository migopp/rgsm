// This is a program that simply prints
//
// 'hello'
.data
h:
    #104
e:
    #101
l:
    #108
o:
    #111

.text
start:
    // move data addresses into r1-r4
    movl r1, h
    movl r2, e
    movl r3, l
    movl r4, o

    // load data from addresses into r1-r4
    ld r1, r1
    ld r2, r2
    ld r3, r3
    ld r4, r4

    // print 'hello'
    print r1
    print r2
    print r3
    print r3
    print r4
    end
