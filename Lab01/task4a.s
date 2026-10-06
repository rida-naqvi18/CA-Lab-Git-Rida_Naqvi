main:
    # Initialize registers manually
    li x10, 0x78786464
    li x11, 0xA8A81919

    # Store x10 as unsigned integer (word) at address 0x100
    li x1, 0x100
    sw x10, 0(x1)

    # Store x11 as unsigned integer (word) at address 0x1F0
    li x1, 0x1F0
    sw x11, 0(x1)

    # Load unsigned short (2 bytes) from address 0x100 into x12
    li x1, 0x100
    lhu x12, 0(x1)

    # Load signed short (2 bytes) from address 0x1F0 into x13
    li x1, 0x1F0
    lh x13, 0(x1)

    # Load signed character (1 byte) from address 0x1F0 into x14
    li x1, 0x1F0
    lb x14, 0(x1)

end:
    j end