from strutils import toHex
from sequtils import map
import print

from ram/read import readUint8, readUint16
from ram/read import readUint32, readUint64
from ram/ram import init, ENDIAN
import config

 
var cpu_ram : array[config.ram_size, uint32]
cpu_ram.init(config.firmware)

print "0x" & cpu_ram.readUint8(0x16, ENDIAN.LITTLE).BiggestInt.toHex(2)
print "0x" & cpu_ram.readUint8(0x16, ENDIAN.BIG).BiggestInt.toHex(2)

print "0x" & cpu_ram.readUint16(0x16, ENDIAN.LITTLE).BiggestInt.toHex(4)
print "0x" & cpu_ram.readUint16(0x16, ENDIAN.BIG).BiggestInt.toHex(4)

print "0x" & cpu_ram.readUint32(0x16, ENDIAN.LITTLE).BiggestInt.toHex(8)
print "0x" & cpu_ram.readUint32(0x16, ENDIAN.BIG).BiggestInt.toHex(8)

print "0x" & cpu_ram.readUint64(0x16, ENDIAN.LITTLE).BiggestInt.toHex(16)
print "0x" & cpu_ram.readUint64(0x16, ENDIAN.BIG).BiggestInt.toHex(16)

# "0x25"
# "0x25"
# "0x8825"
# "0x2588"
# "0x00018825"
# "0x25880100"
# "0x0000382100018825"
# "0x2588010021380000"