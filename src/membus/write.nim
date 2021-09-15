from bitops import clearMasked, bitsliced

from membus import TransactionSize, ENDIAN, Membus
from memory_map import writeByte

 
proc writeUint8*(membus : Membus, byte_address : uint64, value : uint8, endianness : ENDIAN) =
  membus.writeByte(byte_address, value)

proc writeUint16*(membus : Membus, byte_address : uint64, value : uint16, endianness : ENDIAN) =
  var start_address = byte_address
  var end_address = start_address + TransactionSize.HALFWORD.uint64 - 1

  if endianness == ENDIAN.LITTLE:
    var byte_index = 0
    for byte_address in countup(start_address, end_address):
      var b_slice = (byte_index * 8)..(((byte_index + 1) * 8) - 1)
      membus.writeByte(byte_address, value.bitsliced(b_slice).uint8)
      byte_index = byte_index + 1

  if endianness == ENDIAN.BIG:
    var byte_index = 0
    for byte_address in countdown(end_address, start_address):
      var b_slice = (byte_index * 8)..(((byte_index + 1) * 8) - 1)
      membus.writeByte(byte_address, value.bitsliced(b_slice).uint8)
      byte_index = byte_index + 1

proc writeUint32*(membus : Membus, byte_address : uint64, value : uint32, endianness : ENDIAN) =
  var start_address = byte_address
  var end_address = start_address + TransactionSize.WORD.uint64 - 1

  if endianness == ENDIAN.LITTLE:
    var byte_index = 0
    for byte_address in countup(start_address, end_address):
      var b_slice = (byte_index * 8)..(((byte_index + 1) * 8) - 1)
      membus.writeByte(byte_address, value.bitsliced(b_slice).uint8)
      byte_index = byte_index + 1

  if endianness == ENDIAN.BIG:
    var byte_index = 0
    for byte_address in countdown(end_address, start_address):
      var b_slice = (byte_index * 8)..(((byte_index + 1) * 8) - 1)
      membus.writeByte(byte_address, value.bitsliced(b_slice).uint8)
      byte_index = byte_index + 1

proc writeUint64*(membus : Membus, byte_address : uint64, value : uint64, endianness : ENDIAN) =
  var start_address = byte_address
  var end_address = start_address + TransactionSize.DOUBLEWORD.uint64 - 1

  if endianness == ENDIAN.LITTLE:
    var byte_index = 0
    for byte_address in countup(start_address, end_address):
      var b_slice = (byte_index * 8)..(((byte_index + 1) * 8) - 1)
      membus.writeByte(byte_address, value.bitsliced(b_slice).uint8)
      byte_index = byte_index + 1

  if endianness == ENDIAN.BIG:
    var byte_index = 0
    for byte_address in countdown(end_address, start_address):
      var b_slice = (byte_index * 8)..(((byte_index + 1) * 8) - 1)
      membus.writeByte(byte_address, value.bitsliced(b_slice).uint8)
      byte_index = byte_index + 1