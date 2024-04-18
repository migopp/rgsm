// This is a program that simply prints
//
// 'hello'
//
// with lots of inline comments
.data
h:
    #104
e:
    #101       // in data! fatal!
l:
    #108
o:            // borat
    #111

.text
start:
    // move data addresses into r1-r4
    movl r1, h    // here's a random inline comment
    movl r2, e
    movl r3, l
    movl r4, o

    // load data from addresses into r1-r4
    ld r1, r1
    ld r2, r2     // here's another     // its got another one for some reason
    ld r3, r3
    ld r4, r4

    // print 'hello'
    print r1
    print r2
    print r3
    print r3      // and another
    print r4      // ... why is this one here?
    end
