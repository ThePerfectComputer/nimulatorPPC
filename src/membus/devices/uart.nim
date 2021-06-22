from sequtils import map, foldl
from sugar import collect, `=>`
from itertools import chunked
from math import ceil, floormod
from bitops import bitsliced, clearMasked

from ../../utils/rawTerm import rx_empty, getChar, setRawTerm
from ../membus import Membus

# registers to read from
const UART_BASE = 0xC0002000

const POTATO_CONSOLE_RX               = (UART_BASE + 0x08).uint32
const POTATO_CONSOLE_STATUS           = (UART_BASE + 0x10).uint32
const POTATO_CONSOLE_STATUS_RX_EMPTY  = (UART_BASE + 0x01).uint32
const POTATO_CONSOLE_STATUS_TX_EMPTY  = (UART_BASE + 0x02).uint32
const POTATO_CONSOLE_STATUS_RX_FULL   = (UART_BASE + 0x04).uint32
const POTATO_CONSOLE_STATUS_TX_FULL   = (UART_BASE + 0x08).uint32

# registers to write to
const POTATO_CONSOLE_TX               = (UART_BASE + 0x00).uint32
const POTATO_CONSOLE_CLOCK_DIV        = (UART_BASE + 0x18).uint32
const POTATO_CONSOLE_IRQ_EN           = (UART_BASE + 0x20).uint32

proc readByte*(byte_address : uint32) : uint8 = 
  case byte_address:
    of POTATO_CONSOLE_RX:
      if rx_empty():
        return 0.uint8
      else:
        return cast[uint8](getChar())
    of POTATO_CONSOLE_STATUS:
        # TODO : add status bits 1 - 3 later
        return rx_empty().uint8
    of POTATO_CONSOLE_STATUS_RX_EMPTY:
        return rx_empty().uint8
    else:
      raise Exception.newException("UART peripheral can't read from address " & $byte_address)

proc writeByte*(byte_address : uint32, value : uint8) =
  case byte_address:
    of POTATO_CONSOLE_TX:
      stdout.write(cast[char](value))
      stdout.flushFile()
    else:
      raise Exception.newException("UART peripheral can't write to address " & $byte_address)