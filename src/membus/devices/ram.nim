from sequtils import map, foldl
from sugar import collect, `=>`
from itertools import chunked
from math import ceil, floormod
from bitops import bitsliced, clearMasked

import ../../config

var cpu_ram* : array[config.ram_size, uint32]
var firmware_filepath = config.firmware

proc readByte*(byte_address : uint64) : uint8 = 
  var word = cpu_ram[byte_address div 4]
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

proc writeByte*(byte_address : uint64, value : uint8) =

  var word = cpu_ram[byte_address div 4]
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

  cpu_ram[byte_address div 4] = word or shftbyte

proc init(firmware_filepath : string) =
  ## takes a filepath to the location of a firmware binary, and
  ## fills a seq of uint32's with the contents of the firmware binary
  
  # load firmware into memory seq
  var memory_by_bytes = open(firmware_filepath).readAll.map(x => x.uint8)

  # can the specified memory cpu_ram.len contain the firmware?
  try: 
    var mem_len = ceil(memory_by_bytes.len / 4).int
    assert mem_len <= cpu_ram.len
  except Exception as e:
    echo e.msg
    echo "array of length", cpu_ram.len, " is too small to contain firmware from", firmware_filepath
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

    # place the created uint32 into the cpu_ram
    cpu_ram[i] = folded
    i = i + 1

init(firmware_filepath)