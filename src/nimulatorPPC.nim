from strutils import toHex
from sequtils import map
from sugar import `=>`
import print

from ram/read import readUint8, readUint16
from ram/read import readUint32, readUint64
from ram/write import writeUint8, writeUint16
from ram/write import writeUint32, writeUint64
from ram/ram import init, ENDIAN

from cpu/decoder import decode

from isa.mnemonic_enums import MnemonicEnums
import config

 
var cpu_ram : array[config.ram_size, uint32]
cpu_ram.init(config.firmware)

for byte_address in countup(0,32,4):
  var instruction = cpu_ram.readUint32(byte_address.uint32, endianness=ENDIAN.LITTLE)
  print decode(instruction).opcode
# print cpu_ram

# print MnemonicEnums.bc_l_a.int