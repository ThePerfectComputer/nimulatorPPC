from strutils import toHex
from sequtils import map
import print

from ram/read import readUint8, readUint16
from ram/read import readUint32, readUint64
from ram/ram import init, ENDIAN
import config

 
var cpu_ram : array[config.ram_size, uint32]
cpu_ram.init(config.firmware)

assert cpu_ram.readUint8(0x16, ENDIAN.LITTLE) == 0x25.uint64
assert cpu_ram.readUint8(0x16, ENDIAN.BIG) == 0x25.uint64
assert cpu_ram.readUint16(0x16, ENDIAN.LITTLE) == 0x8825.uint64
assert cpu_ram.readUint16(0x16, ENDIAN.BIG) == 0x2588.uint64
assert cpu_ram.readUint32(0x16, ENDIAN.LITTLE) == 0x18825.uint64
assert cpu_ram.readUint32(0x16, ENDIAN.BIG) == 0x25880100.uint64
assert cpu_ram.readUint64(0x16, ENDIAN.LITTLE) == 0x382100018825.uint64
assert cpu_ram.readUint64(0x16, ENDIAN.BIG) == 0x2588010021380000.uint64
echo "finished"