load_uart_address:
  lis 5, address@h
  ld 5, address@l(5)

wait_rx: # poll the UART until a byte is received
  lbz 1, 0x10(5)            # read the UART status register
  andi. 1, 1, 1             # mask for RX empty bit
  bca 0b01100, 1, wait_rx   # if empty (check > 1 bit (Power index 1) of CR Field 0), branch to wait_rx to try again
  lbz 1, 8(5)               # load the received byte
  addi 1, 1, 1              # increment value to be stored
  stb 1, 0(5)               # send the received byte
  b wait_rx

.balign 8
address:
  .quad 0xc0002000
