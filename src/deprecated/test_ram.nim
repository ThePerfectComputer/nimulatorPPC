from ../membus/read import readUint8, readUint16
from ../membus/read import readUint32, readUint64
from ../membus/write import writeUint8, writeUint16
from ../membus/write import writeUint32, writeUint64
from ../membus/membus import cpu_membus, ENDIAN

from ../membus/devices/ram import cpu_ram

import print
import strutils


cpu_ram[0] = 1017118720.uint32
cpu_ram[1] = 3903127592.uint32
cpu_ram[2] = 2284126224.uint32
cpu_ram[3] = 1881210881.uint32
cpu_ram[4] = 1098973194.uint32
cpu_ram[5] = 2284126216.uint32
cpu_ram[6] = 941686785.uint32
cpu_ram[7] = 2552561664.uint32
cpu_ram[8] = 1275068392.uint32
cpu_ram[9] = 1610612736.uint32
cpu_ram[10] = 3221233664.uint32
cpu_ram[11] = 0.uint32
cpu_ram[12] = 0.uint32
cpu_ram[13] = 0.uint32
cpu_ram[14] = 0.uint32
cpu_ram[15] = 0.uint32

print cpu_ram[5].BiggestInt.toHex(8)
print cpu_membus.readUint8(0x16, ENDIAN.LITTLE)

# quit(0)
assert cpu_membus.readUint8(0x16, ENDIAN.LITTLE) == 0x25.uint8
assert cpu_membus.readUint8(0x16, ENDIAN.BIG) == 0x25.uint8
assert cpu_membus.readUint16(0x16, ENDIAN.LITTLE) == 0x8825.uint16
assert cpu_membus.readUint16(0x16, ENDIAN.BIG) == 0x2588.uint16
assert cpu_membus.readUint32(0x16, ENDIAN.LITTLE) == 0x18825.uint32
assert cpu_membus.readUint32(0x16, ENDIAN.BIG) == 0x25880100.uint32
assert cpu_membus.readUint64(0x16, ENDIAN.LITTLE) == 0x382100018825.uint64
assert cpu_membus.readUint64(0x16, ENDIAN.BIG) == 0x2588010021380000.uint64

cpu_membus.writeUint16(0x16, 0x3334, ENDIAN.LITTLE)
# print cpu_ram[5].BiggestInt.toHex(8)
# quit(0)

assert cpu_ram[5] == 0x33340008

cpu_membus.writeUint16(0x16, 0x3334, ENDIAN.BIG)
assert cpu_ram[5] == 0x34330008

# boundary crossing test
cpu_membus.writeUint16(0x13, 0x3334, ENDIAN.LITTLE)
assert cpu_ram[4..5] == [0x3481000A.uint32, 0x34330033.uint32]

cpu_membus.writeUint16(0x13, 0x3334, ENDIAN.BIG)
assert cpu_ram[4..5] == [0x3381000A.uint32, 0x34330034.uint32]

cpu_membus.writeUint16(0x13, 0xFF00, ENDIAN.BIG)
assert cpu_ram[4..5] == [0xFF81000A.uint32, 0x34330000.uint32]

# run some tests over write32
cpu_membus.writeUint32(0x23, 0xFF0012FF.uint32, ENDIAN.LITTLE)
assert cpu_ram[8..9] == [0xFFFFFFE8.uint32, 0x60FF0012.uint32]


cpu_membus.writeUint32(0x24, 0xFF0012FF.uint32, ENDIAN.BIG)
assert cpu_ram[9] == 0xFF1200FF.uint32

# run some tests over write64
cpu_membus.writeUint64(0x23, 0x1F00_12FF_8436_FF96.uint64, ENDIAN.BIG)
assert cpu_ram[8..10] == [0x1FFFFFE8.uint32, 0x84FF1200.uint32, 0xC096FF36.uint32]

cpu_membus.writeUint64(0x24, 0x1F00_12FF_8436_FF96.uint64, ENDIAN.LITTLE)
assert cpu_ram[9..10] == [0x8436FF96.uint32, 0x1F0012FF.uint32]


echo "finished"