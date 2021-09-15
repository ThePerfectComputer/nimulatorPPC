from ../../utils/rawTerm import rx_empty, getChar, setRawTerm, readfds

setRawTerm()

# registers to read from
const UART_BASE = 0xC0002000

const POTATO_CONSOLE_RX               = (UART_BASE + 0x08).uint64
const POTATO_CONSOLE_STATUS           = (UART_BASE + 0x10).uint64
const POTATO_CONSOLE_STATUS_RX_EMPTY  = (UART_BASE + 0x01).uint64
# const POTATO_CONSOLE_STATUS_TX_EMPTY  = (UART_BASE + 0x02).uint64
# const POTATO_CONSOLE_STATUS_RX_FULL   = (UART_BASE + 0x04).uint64
# const POTATO_CONSOLE_STATUS_TX_FULL   = (UART_BASE + 0x08).uint64

# registers to write to
const POTATO_CONSOLE_TX               = (UART_BASE + 0x00).uint64
# const POTATO_CONSOLE_CLOCK_DIV        = (UART_BASE + 0x18).uint64
# const POTATO_CONSOLE_IRQ_EN           = (UART_BASE + 0x20).uint64

proc readByte*(byte_address : uint64) : uint8 = 
  if byte_address == POTATO_CONSOLE_RX:
    if rx_empty(readfds):
      return 0.uint8
    else:
      return cast[uint8](getChar())
  elif byte_address == POTATO_CONSOLE_STATUS:
    return rx_empty(readfds).uint8
  elif byte_address == POTATO_CONSOLE_STATUS_RX_EMPTY:
    # TODO : add status bits 1 - 3 later
    return rx_empty(readfds).uint8
  else:
    raise Exception.newException("UART peripheral can't read from address " & $byte_address)

proc writeByte*(byte_address : uint64, value : uint8) =
  if byte_address == POTATO_CONSOLE_TX:
    stdout.write(cast[char](value))
    stdout.flushFile()
  else:
    raise Exception.newException("UART peripheral can't write to address " & $byte_address)