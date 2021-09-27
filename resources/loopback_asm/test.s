load_uart_address:
  lis %r5, address@h
  ld  %r5, address@l(%r5)

set_divisor:
  # this is primarily intended for chiselwatt and
  # should have no effect on nimulatorPPC
  addi  %r1, 0, 26
  stb   %r1, 0x18(%r5)

wait_rx: # poll the UART until a byte is received
  lbz   %r1, 0x10(%r5)            # read the UART status register
  andi. %r1, %r1, 1               # mask for RX empty bit
  bc    0b01100, 1, wait_rx       # if empty (check > 1 bit (Power index 1) of CR Field 0), branch to wait_rx to try again
  lbz   %r1, 8(%r5)               # load the received byte
  addi  %r1, %r1, 1               # increment value to be stored
  stb   %r1, 0(%r5)               # send the received byte
  b     wait_rx

.balign 8
address:
  .quad 0xc0002000
