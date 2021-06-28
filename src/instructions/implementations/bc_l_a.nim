include ../core

proc bc_l_a*(instruction : uint32) = 
  ## page 37 in POWERISA manual 3.0B
  var AA = get_form.bc_l_a().AA(instruction) # I think this is for absolute address
  var BO = get_form.bc_l_a().BO(instruction)
  var BI = get_form.bc_l_a().BI(instruction) # BI allows you to specify bit in CR(Condition Register to test)
  var BD = get_form.bc_l_a().BD(instruction)
  var LK = get_form.bc_l_a().LK(instruction) # should we place CIA+4 in link reg?

  var target_address : uint64

  if AA == 1:
    target_address = cast[uint64](BD shl 2)
  if AA == 0:
    target_address = cast[uint64](BD shl 2) + CIA

  if LK == 1:
    regfiles.LR[0] = CIA + 4

  side_effects.evaluate_branch(BO, BI, target_address)