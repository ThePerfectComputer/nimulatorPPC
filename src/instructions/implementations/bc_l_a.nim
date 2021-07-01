# steps for adding new instructions:
# 1. copy this file
# 2. for any new instruction, update the comments
# as needed and anything associated with the comments
include ../core

proc bc_l_a*(instruction : uint32) = 
  ## page 37 in POWERISA manual 3.0B
  ## make sure to grab the get_form.``instruction`` below
  ## matches the the filename
  var AA = get_form.bc_l_a().AA(instruction) # I think this is for absolute address
  var BO = get_form.bc_l_a().BO(instruction)
  var BI = get_form.bc_l_a().BI(instruction) # BI allows you to specify bit in CR(Condition Register to test)
  var BD = get_form.bc_l_a().BD(instruction)
  var LK = get_form.bc_l_a().LK(instruction) # should we place CIA+4 in link reg?

  # actually do work needed to execute instruction
  var target_address : uint64

  if AA == 1:
    target_address = cast[uint64](BD shl 2)
  if AA == 0:
    target_address = cast[uint64](BD shl 2) + CIA

  if LK == 1:
    regfiles.LR[0] = CIA + 4

  # this instruction has side-effects:
  # if instruction_tracing is disabled, deffering is a no-op,
  # otherwise, deffering makes sure the debug print for setCR0
  # gets fired at the very end of this function
  defer: side_effects.evaluate_branch(BO, BI, target_address)

  # finish debug prep work and call instruction debug print
  instruction_trace:
    print_instruction(
      "bc_l_a ",
      fmt"0b{BO.BiggestInt.toBin(5)}, {BI}, 0x{target_address.BiggestInt.toHex(16)}, AA = {AA}, " & fmt"LK = {LK}",
      "CIA",
      "NIA"
    )
