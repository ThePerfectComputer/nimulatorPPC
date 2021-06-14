import sugar
import strutils
import argparse
import memory
import config
import print

 
var ram : array[config.ram_size, uint32]
ram.init(config.firmware)
print ram.map(x => x.BiggestInt.toBin(32))

# go ahead and load memory
# var ram = loadMemory(mem_depth, firmware_filepath)

# print ram.read(0x5, TransactionSize.WORD, ENDIAN.LITTLE).map(x => "0x" & x.BiggestInt.toHex(2))
# print ram.read(0x1,TransactionSize.WORD, ENDIAN.BIG).map(x => "0x" & x.BiggestInt.toHex(2))
# print ENDIAN.BIG