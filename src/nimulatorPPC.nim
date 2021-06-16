from strutils import toHex
from sequtils import map
from sugar import `=>`
import print

import config
from ram/ram import init
from cpu/fetch import fetchInstruction
from cpu/decoder import getOp

 
var cpu_ram : array[config.ram_size, uint32]
cpu_ram.init(config.firmware)

for cycle in 0..8:
  var op = cpu_ram
           .fetchInstruction()
           .getOp()

  print op.opcode