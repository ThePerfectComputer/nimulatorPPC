import membus
from devices/ram import readByte, writeByte
from devices/uart import readByte, writeByte

# TODO : perhaps memory system mapping should come from
# a config file
proc readByte*(mem : Membus, byte_address : uint32) : uint8 = 
  const ram_upper  = (0xC0002000 - 1).uint32
  const uart_lower = 0xC0002000.uint32
  const uart_upper = 0xC0003000.uint32

  case byte_address:
    of 0..ram_upper:
      return ram.readByte(byte_address)
    of uart_lower..uart_upper:
      return uart.readByte(byte_address)
    else:
      raise Exception.newException("no device mapped to address " & $byte_address)

  return 5.uint8

proc writeByte*(mem : Membus, byte_address : uint32, data : uint8) = 
  const ram_upper  = (0xC0002000 - 1).uint32
  const uart_lower = 0xC0002000.uint32
  const uart_upper = 0xC0003000.uint32

  case byte_address:
    of 0..ram_upper:
      ram.writeByte(byte_address, data)
    of uart_lower..uart_upper:
      uart.writeByte(byte_address, data)
    else:
      raise Exception.newException("no device mapped to address " & $byte_address)