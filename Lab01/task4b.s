main:
    li  x10, 0x100
    li  x11, 0x200
    li  x12, 0x300

#initializing array a
    li  x5, 1
    sb  x5, 0(x10)      #a[0]=1
    li  x5, 2
    sb  x5, 1(x10)      #a[1]=2
    li  x5, 3
    sb  x5, 2(x10)      #a[2]=3
    li  x5, 4
    sb  x5, 3(x10)      #a[3]=4

#initializing array b
    li  x6, 10
    sh  x6, 0(x11)      #b[0]=10
    li  x6, 20
    sh  x6, 2(x11)      #b[1]=20
        li  x6, 30
    sh  x6, 4(x11)      #b[2]=30
    li  x6, 40
    sh  x6, 6(x11)      #b[3]=40

#computing c[i]=a[i]+b[i] 

    lb  x5, 0(x10)      #t0=a[0]
    lh  x6, 0(x11)      #t1=b[0]
    add x7, x5, x6
    sw  x7, 0(x12)      #c[0]

    lb  x5, 1(x10)      #t0=a[1]
    lh  x6, 2(x11)      #t1=b[1]
    add x7, x5, x6
    sw  x7, 4(x12)      #c[1]

    lb  x5, 2(x10)      #t0=a[2]
    lh  x6, 4(x11)      #t1=b[2]
    add x7, x5, x6
    sw  x7, 8(x12)      #c[2]

    lb  x5, 3(x10)      #t0=a[3]
    lh  x6, 6(x11)      #t1=b[3]
    add x7, x5, x6
    sw  x7, 12(x12)     #c[3]
end:
    j end


