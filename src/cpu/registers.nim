type
  REGTYPE* = enum
    NONE,
    GPR,
    FPR,

    VR,
    VSR,

    # in the actual Chip11 hardware CPU implementation,
    # the following register group is combined into a
    # single regfile
    TDOOMED,
    BESCR,
    AMOR,
    LR,
    XER,
    VSCR,
    LPIDR,
    PIDR,
    SLB,
    MSR,

    SPR,

    FPSCR,
    CRA,
    CRB,

    BHRB