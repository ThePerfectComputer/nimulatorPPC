# This is the beginnings of a test suite that should
# print the pass/fail status for the included tests
# to the UART of a POWER CPU in real with an IO-mapped
# potato UART mapped to 0xC0002000.

# As of right now, this assembly file just prints
# "Hello World!" to the UART of said POWER CPU.

.set uart_base_address, 0xC0002000

.macro print_line my_string:vararg
prelude\@:
  # get UART address
  addi %r1, 0, 0
  oris %r1, %r1, uart_base_address@h
  ori  %r1, %r1, uart_base_address@l

  # load string addresss
  addi %r2, 0, 0
  oris %r2, %r2, (msg\@)@h
  ori  %r2, %r2, (msg\@)@l

print_loop\@:
  # load charater at pointer r2
  lbz   %r3, 0(%r2)

  # if null-character, exit routine
  cmpdi %r3, 0
  beq   exit\@

  # else write character to UART
  stb   %r3, 0(%r1)

  # increment character pointer
  addi  %r2, %r2, 1   
  # continue printing
  b     print_loop\@

msg\@:
  .asciz  "\my_string\r\n\()"
  .balign 8

exit\@:

.endm

set_divisor:
  # this is primarily intended for chiselwatt and
  # should have no effect on nimulatorPPC
  addi  %r5, 0, 0
  oris  %r5, %r5, uart_base_address@h
  ori   %r5, %r5, uart_base_address@l

  addi  %r1, 0, 26
  stb   %r1, 0x18(%r5)

basic_routine:
  # print out some messages
  print_line Hello World
  print_line Goodbye World

  # once print_string finishes, we stall here
  b     .
