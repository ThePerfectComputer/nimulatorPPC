from sequtils import foldl
from sugar import collect
from math import floormod
from bitops import bitsliced

from ram import TransactionSize, ENDIAN

proc readByte(memory : openArray[uint32], byte_address : uint32) : uint8 = 

  var word = memory[byte_address div 4]
  var byte : uint8
  var byte_select : range[0..3]
  byte_select = (byte_address.floorMod 4)

  case byte_select:
    of 0:
      return word.bitsliced(0..7).uint8
    of 1:
      return word.bitsliced(8..15).uint8
    of 2:
      return word.bitsliced(16..23).uint8
    of 3:
      return word.bitsliced(24..31).uint8

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

proc read(memory : openArray[uint32], byte_address : uint32, size : TransactionSize, endianness : ENDIAN) : seq[uint8] =

  for byte_address in byte_address..(byte_address + size.uint32 - 1):
    if endianness == ENDIAN.LITTLE:
      result.add(memory.readByte(byte_address))
    else:
      result.insert(memory.readByte(byte_address))

proc readUint8*(memory : openArray[uint32], byte_address : uint32, endianness : ENDIAN) : uint8 = 
  var bytes = memory.read(byte_address, TransactionSize.BYTE, endianness)

  # make a seq of bytes each shifted by the correct amounts
  let accumulated_shifts = collect(newSeq):
    for i, byte in bytes:
      byte.uint8 shl (i * 8)
  
  # bitwise-or all various shifted values in the seq
  var folded = accumulated_shifts.foldl(a or b)

  return folded

proc readUint16*(memory : openArray[uint32], byte_address : uint32, endianness : ENDIAN) : uint16 = 
  var bytes = memory.read(byte_address, TransactionSize.HALFWORD, endianness)

  # make a seq of bytes each shifted by the correct amounts
  let accumulated_shifts = collect(newSeq):
    for i, byte in bytes:
      byte.uint16 shl (i * 8)
  
  # bitwise-or all various shifted values in the seq
  var folded = accumulated_shifts.foldl(a or b)

  return folded

proc readUint32*(memory : openArray[uint32], byte_address : uint32, endianness : ENDIAN) : uint32 = 
  var bytes = memory.read(byte_address, TransactionSize.WORD, endianness)

  # make a seq of bytes each shifted by the correct amounts
  let accumulated_shifts = collect(newSeq):
    for i, byte in bytes:
      byte.uint32 shl (i * 8)
  
  # bitwise-or all various shifted values in the seq
  var folded = accumulated_shifts.foldl(a or b)

  return folded

proc readUint64*(memory : openArray[uint32], byte_address : uint32, endianness : ENDIAN) : uint64 = 
  var bytes = memory.read(byte_address, TransactionSize.DOUBLEWORD, endianness)

  # make a seq of bytes each shifted by the correct amounts
  let accumulated_shifts = collect(newSeq):
    for i, byte in bytes:
      byte.uint64 shl (i * 8)
  
  # bitwise-or all various shifted values in the seq
  var folded = accumulated_shifts.foldl(a or b)

  return folded