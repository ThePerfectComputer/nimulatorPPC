type
  TransactionSize* = enum
    BYTE = 1, HALFWORD = 2, WORD = 4, DOUBLEWORD = 8, QUADWORD = 16
  ENDIAN* = enum
    LITTLE = 0, BIG = 1
  Membus* = object

var cpu_membus* : Membus