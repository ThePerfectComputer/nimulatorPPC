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
  addis %r1,   0, msg@h
  addi  %r1, %r1, msg@l
  # call print_string routine
  bl    print_string

  # once print_string finishes, we stall here
  b     .

print_string: # (%r1 : null terminated string address)
  # %r3: UART_ADDRESS
  lis   %r3, uart_address@h
  ld    %r3, uart_address@l(%r3)

print_loop:
  # load 
  lbz   %r4, 0(%r1)

  # if null-character, jump to link register
  cmpdi %r4, 0
  beqlr

  # else write character to UART
  stb   %r4, 0(%r3)

  # increment character pointer
  addi  %r1, %r1, 1   
  # continue printing
  b     print_loop
  

msg:
  .asciz  "Hello, world!\r\n"
  .balign 8
  .quad 

.balign 8
uart_address:
  .quad 0xc0002000
