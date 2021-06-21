from sequtils import foldl
from sugar import collect

from membus import ENDIAN, TransactionSize, Membus
from memory_map import readByte 

proc read(membus : Membus, byte_address : uint32, size : TransactionSize, endianness : ENDIAN) : seq[uint8] =
  # takes a seq of bytes to read and returns read data in a seq.
  # the ordering of the byts in the seq is endianess dependent
  for byte_address in byte_address..(byte_address + size.uint32 - 1):
    if endianness == ENDIAN.LITTLE:
      result.add(membus.readByte(byte_address))
    else:
      result.insert(membus.readByte(byte_address))

proc readUint8*(membus : Membus, byte_address : uint32, endianness : ENDIAN) : uint8 = 
  return membus.read(byte_address, TransactionSize.BYTE, endianness)[0]

proc readUint16*(membus : Membus, byte_address : uint32, endianness : ENDIAN) : uint16 = 
  var bytes = membus.read(byte_address, TransactionSize.HALFWORD, endianness)

  # make a seq of bytes each shifted by the correct amounts
  let accumulated_shifts = collect(newSeq):
    for i, byte in bytes:
      byte.uint16 shl (i * 8)
  
  # bitwise-or all various shifted values in the seq
  var folded = accumulated_shifts.foldl(a or b)

  return folded

proc readUint32*(membus : Membus, byte_address : uint32, endianness : ENDIAN) : uint32 = 
  var bytes = membus.read(byte_address, TransactionSize.WORD, endianness)

  # make a seq of bytes each shifted by the correct amounts
  let accumulated_shifts = collect(newSeq):
    for i, byte in bytes:
      byte.uint32 shl (i * 8)
  
  # bitwise-or all various shifted values in the seq
  var folded = accumulated_shifts.foldl(a or b)

  return folded

proc readUint64*(membus : Membus, byte_address : uint32, endianness : ENDIAN) : uint64 = 
  var bytes = membus.read(byte_address, TransactionSize.DOUBLEWORD, endianness)

  # make a seq of bytes each shifted by the correct amounts
  let accumulated_shifts = collect(newSeq):
    for i, byte in bytes:
      byte.uint64 shl (i * 8)
  
  # bitwise-or all various shifted values in the seq
  var folded = accumulated_shifts.foldl(a or b)

  return folded