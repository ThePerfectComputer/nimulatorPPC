from sequtils import map, foldl
from sugar import collect, `=>`
from itertools import chunked
from math import ceil

type
  TransactionSize* = enum
    BYTE = 1, HALFWORD = 2, WORD = 4, DOUBLEWORD = 8, QUADWORD = 16

  ENDIAN* = enum
    LITTLE = 0, BIG = 1

proc init*(ram : var openArray[uint32], firmware_filepath : string) =
  ## takes a filepath to the location of a firmware binary, and
  ## fills a seq of uint32's with the contents of the firmware binary
  
  # load firmware into memory seq
  var memory_by_bytes = open(firmware_filepath).readAll.map(x => x.uint8)

  # can the specified memory ram.len contain the firmware?
  try: 
    var mem_len = ceil(memory_by_bytes.len / 4).int
    assert mem_len <= ram.len
  except Exception as e:
    echo e.msg
    echo "array of length", ram.len, " is too small to contain firmware from", firmware_filepath
    quit(1)
  
  # load mem
  var i = 0
  
  for vec4bytes in memory_by_bytes.chunked(4):

    # the following is a fancy way of grabbing 4 bytes at
    # a time and packing them into a uint32
    let word = collect(newSeq):
      for i, byte in vec4bytes:
        byte.uint32 shl (i * 8)
    var folded = word.foldl(a or b)

    # place the created uint32 into the ram
    ram[i] = folded
    i = i + 1
