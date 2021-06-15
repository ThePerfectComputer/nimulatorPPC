from math import floormod
from bitops import clearMasked, bitsliced

from ram import TransactionSize, ENDIAN

proc writeByte*(memory : var openArray[uint32], byte_address : uint32, value : uint8) =

  var word = memory[byte_address div 4]
  var byte_select : range[0..3] # which sub-byte in the word we want
  byte_select = (byte_address.floorMod 4)
  var shftbyte : uint32 # byte to be left-shifted as needed to align byt-address within word 

  case byte_select:
    of 0:
      word = word.clearMasked(0..7)
      shftbyte = value.uint32 shl (byte_select * 8)
    of 1:
      word = word.clearMasked(8..15)
      shftbyte = value.uint32 shl (byte_select * 8)
    of 2:
      word = word.clearMasked(16..23)
      shftbyte = value.uint32 shl (byte_select * 8)
    of 3:
      word = word.clearMasked(24..31)
      shftbyte = value.uint32 shl (byte_select * 8)

  memory[byte_address div 4] = word or shftbyte
 
proc writeUint8*(memory : var openArray[uint32], byte_address : uint32, value : uint8, endianness : ENDIAN) =
  memory.writeByte(byte_address, value)

proc writeUint16*(memory : var openArray[uint32], byte_address : uint32, value : uint16, endianness : ENDIAN) =
  var start_address = byte_address
  var end_address = start_address + TransactionSize.HALFWORD.uint32 - 1

  if endianness == ENDIAN.LITTLE:
    var byte_index = 0
    for byte_address in countup(start_address, end_address):
      var b_slice = (byte_index * 8)..(((byte_index + 1) * 8) - 1)
      memory.writeByte(byte_address, value.bitsliced(b_slice).uint8)
      byte_index = byte_index + 1

  if endianness == ENDIAN.BIG:
    var byte_index = 0
    for byte_address in countdown(end_address, start_address):
      var b_slice = (byte_index * 8)..(((byte_index + 1) * 8) - 1)
      memory.writeByte(byte_address, value.bitsliced(b_slice).uint8)
      byte_index = byte_index + 1

proc writeUint32*(memory : var openArray[uint32], byte_address : uint32, value : uint32, endianness : ENDIAN) =
  var start_address = byte_address
  var end_address = start_address + TransactionSize.WORD.uint32 - 1

  if endianness == ENDIAN.LITTLE:
    var byte_index = 0
    for byte_address in countup(start_address, end_address):
      var b_slice = (byte_index * 8)..(((byte_index + 1) * 8) - 1)
      memory.writeByte(byte_address, value.bitsliced(b_slice).uint8)
      byte_index = byte_index + 1

  if endianness == ENDIAN.BIG:
    var byte_index = 0
    for byte_address in countdown(end_address, start_address):
      var b_slice = (byte_index * 8)..(((byte_index + 1) * 8) - 1)
      memory.writeByte(byte_address, value.bitsliced(b_slice).uint8)
      byte_index = byte_index + 1

proc writeUint64*(memory : var openArray[uint32], byte_address : uint32, value : uint64, endianness : ENDIAN) =
  var start_address = byte_address
  var end_address = start_address + TransactionSize.DOUBLEWORD.uint32 - 1

  if endianness == ENDIAN.LITTLE:
    var byte_index = 0
    for byte_address in countup(start_address, end_address):
      var b_slice = (byte_index * 8)..(((byte_index + 1) * 8) - 1)
      memory.writeByte(byte_address, value.bitsliced(b_slice).uint8)
      byte_index = byte_index + 1

  if endianness == ENDIAN.BIG:
    var byte_index = 0
    for byte_address in countdown(end_address, start_address):
      var b_slice = (byte_index * 8)..(((byte_index + 1) * 8) - 1)
      memory.writeByte(byte_address, value.bitsliced(b_slice).uint8)
      byte_index = byte_index + 1