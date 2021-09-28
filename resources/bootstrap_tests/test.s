# This is the beginnings of a test suite that should
# print the pass/fail status for the included tests
# to the UART of a POWER CPU in real with an IO-mapped
# potato UART mapped to 0xC0002000.

# As of right now, this assembly file just prints
# "Hello World!" to the UART of said POWER CPU.

set_divisor:
  # this is primarily intended for chiselwatt and
  # should have no effect on nimulatorPPC
  lis   %r5, uart_address@h
  ld    %r5, uart_address@l(%r5)
  addi  %r1, 0, 26
  stb   %r1, 0x18(%r5)

basic_routine:
  # load string address
  addi  %r1,   0, msg@h
  addi  %r1, %r1, msg@l
  li    %r2, msg_end
  # call print_string routine
  bl    print_string

  # once print_string finishes, we stall here
  b     .
  

print_string: # (%r1 : string-address, %r2 : string-end-address)
  # %r3: UART_ADDRESS
  lis   %r3, uart_address@h
  ld    %r3, uart_address@l(%r3)

print_loop:
  # load and write character to UART

  lbz   %r4, 0(%r1)
  stb   %r4, 0(%r3)

  # if end of string, jump to link register
  cmp   0, 1, %r1, %r2 
  bclr  0b01100, 2, 0

  # else increment character pointer and
  # continue printing
  addi  %r1, %r1, 1   
  b     print_loop
  

msg:
  .ascii "Hello, world!\r\n"
  .balign 8
  .quad 
  msg_end = . - 1

.balign 8
uart_address:
  .quad 0xc0002000
