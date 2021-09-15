# steps for adding new instructions:
# 1. copy this file
# 2. for any new instruction, update the comments
# as needed and anything associated with the comments
import ../imported_symbols

proc b_l_a*(instruction : uint32) = 
  ## page 37 in POWERISA manual 3.0B
  ## make sure to grab the get_form.``instruction`` below
  ## matches the the filename
  var AA = get_form.b_l_a().AA(instruction) # I think this is for absolute address
  var LI = get_form.b_l_a().LI(instruction) 
  var LK = get_form.b_l_a().LK(instruction) # should we place CIA+4 in link reg?

  # actually do work needed to execute instruction
  
  if AA == 1:
    NIA = cast[uint64](LI shl 2)
  if AA == 0:
    NIA = CIA + cast[uint64](LI shl 2)

  if LK == 1:
    regfiles.LR[0] = CIA + 4
