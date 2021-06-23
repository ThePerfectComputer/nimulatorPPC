import membus
from devices/ram import readByte, writeByte
from devices/uart import readByte, writeByte

# TODO : perhaps memory system mapping should come from
# a config file
proc readByte*(mem : Membus, byte_address : uint64) : uint8 = 
  const ram_upper  = (0xC0002000 - 1).uint64
  const uart_lower = 0xC0002000.uint64
  const uart_upper = 0xC0003000.uint64

  if (byte_address >= 0) and (byte_address <= ram_upper):
    return ram.readByte(byte_address)
  elif (byte_address >= uart_lower) and (byte_address <= uart_upper):
    return uart.readByte(byte_address)
  else:
    raise Exception.newException("no device mapped to address " & $byte_address)

proc writeByte*(mem : Membus, byte_address : uint64, data : uint8) = 
  const ram_upper  = (0xC0002000 - 1).uint64
  const uart_lower = 0xC0002000.uint64
  const uart_upper = 0xC0003000.uint64

  if (byte_address >= 0) and (byte_address <= ram_upper):
    ram.writeByte(byte_address, data)
  elif (byte_address >= uart_lower) and (byte_address <= uart_upper):
    uart.writeByte(byte_address, data)
  else:
    raise Exception.newException("no device mapped to address " & $byte_address)