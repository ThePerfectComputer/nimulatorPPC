import os
import sequtils
import sugar
import itertools
import math
import bitops

import print

type
  TransactionSize* = enum
    BYTE = 1, HALFWORD = 2, WORD = 4, DOUBLEWORD = 8, QUADWORD = 16

  ENDIAN* = enum
    LITTLE = 0, BIG = 1

proc init*(ram : var openArray[uint32], firmware_filepath : string) =
  ## takes a filepath to the location of a firmware binary, and
  ## fills a seq of uint32's with the contents of the firmware binary
  var mem_depth = ram.len
  
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
    echo vec4bytes
    var vec4uint32 = vec4bytes.map(x => x.uint32)
    var mem_word = [vec4uint32[0], vec4uint32[1] shl 8, vec4uint32[2] shl 16, vec4uint32[3] shl 24]
    var folded = mem_word.foldl(a or b)
    ram[i] = folded
    i = i + 1

# proc readByte(memory : seq[uint32], byte_address : int) : uint8 = 

#   var word = memory[byte_address div 4]
#   var byte_select : range[0..3]
#   byte_select = (byte_address.floorMod 4)

#   case byte_select:
#     of 0:
#       word.bitslice(0..7)
#     of 1:
#       word.bitslice(8..15)
#     of 2:
#       word.bitslice(16..23)
#     of 3:
#       word.bitslice(24..31)

#   return word.uint8

# proc writeByte(memory : seq[uint32], byte : uint8, byte_address : int) =

#   var word = memory[byte_address div 4]
#   var byte_select : range[0..3]
#   byte_select = (byte_address.floorMod 4)
#   var wordToSplice = byte.uint32 shl (byte_select * 8)

#   case byte_select:
#     of 0:
#       word.clearMask(0..7)
#       memory[byte_address div 4] = word.bitor wordToSplice
#     of 1:
#       word.clearMask(8..15)
#     of 2:
#       word.clearMask(16..23)
#     of 3:
#       word.clearMask(24..31)

# proc read*(memory : seq[uint32], 
#             byte_address : int,
#             size : TransactionSize, 
#             endianness : ENDIAN) : seq[uint8] =

#   for byte_address in byte_address..(byte_address + size.int - 1):
#     if endianness == ENDIAN.LITTLE:
#       result.add(memory.readByte(byte_address))
#     else:
#       result.insert(memory.readByte(byte_address))