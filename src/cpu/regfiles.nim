# for debug-diff functions at the end of the file
import std/macros
from strformat import fmt
from strutils import toBin, insertSep

from sequtils import zip
from ../core import uint128

# you can find a link to the POWER ISA manual in the
# README.md in the root directory

# below we have multiple regfiles. having an old copy
# of each regfile is useful during debugging and allows
# us to see what changed in a regfile after executing
# a certain instruction

var GPR*, GPR_old : array[32, uint64] # page 45 in POWER3.0B ISA manual
var FPR*, FPR_old : array[32, uint64] # page 124 in the POWER3.0B ISA manual

var VR*,  VR_old  : array[32, uint128]  # page 232 in the POWER3.0B ISA manual
var VSR*, VSR_old : array[64, uint128] # page 364 in the POWER3.0B ISA manual

# TODO : find info for TDOOMED
# TDOOMED

var BESCR*, BESCR_old : array[1, uint64] # page 902 in the POWER3.0B ISA manual
var AMOR*,   AMOR_old : array[1, uint64] # its technically an SPR - page 972

# TODO : is LR a solo register? - or part of an SPR?
var XER*,     XER_old: array[1, uint64] # on page 10, also on page 971 as SPR[1]
var VSCR*,   VSCR_old: array[1, uint32] # on page 10
var LPIDR*, LPIDR_old: array[1, uint32] # on page 931
var PIDR*,   PIDR_old: array[1, uint64] # on page 962
var MSR*,     MSR_old: array[1, uint64] # on page 962

# TODO : Not actually sure that SLB is a register
var FPSCR*, FPSCR_old: array[1, uint32]  # on page 10
var CR*,       CR_old: array[1, uint32]  # on page 10
var CTR*,     CTR_old: array[1, uint64]  # on page 32
var LR*,      LR_old : array[1, uint64]  # on page 32
var BHRB*,   BHRB_old: array[32, uint64] # on page 10

proc advanceRegHistory*() = 
  GPR_old   = GPR
  FPR_old   = FPR
  VR_old    = VR
  VSR_old   = VSR
  BESCR_old = BESCR
  AMOR_old  = AMOR
  XER_old   = XER
  VSCR_old  = VSCR
  LPIDR_old = LPIDR
  PIDR_old  = PIDR
  MSR_old   = MSR
  FPSCR_old = FPSCR
  CR_old    = CR
  CTR_old   = CTR
  LR_old    = LR
  BHRB_old  = BHRB

proc deltaRegfile(old, curr : openArray[uint32 or uint64], regfile_name : string) : string= 
  assert old.len == curr.len
   
  for index, (old, curr) in zip(old,curr):
    if old != curr:
      var old = old.BiggestInt.toBin(64).insertSep(' ', digits = 8)
      var curr = curr.BiggestInt.toBin(64).insertSep(' ', digits = 8)
      result &= fmt"{regfile_name}[{index}] {old} -> {curr}; "
  
  if result != "":
    result &= "\n"

macro deltaRegfile(args: varargs[untyped]): untyped =
  result = newStmtList()
  var regfile_name : string

  if args[1].kind in {nnkSym, nnkIdent}:
    regfile_name = $args[1]

  result.add nnkCall.newTree(ident"deltaRegfile")
  for x in args:
    result[^1].add x
  result[^1].add nnkExprEqExpr.newTree(ident"regfile_name", newLit(regfile_name))

proc deltaRegfiles*() : string =
  return deltaRegfile(GPR_old,   GPR)   &
  deltaRegfile(FPR_old,   FPR)   &
  deltaRegfile(BESCR_old, BESCR) &
  deltaRegfile(AMOR_old,  AMOR)  &
  deltaRegfile(XER_old,   XER)   &
  deltaRegfile(VSCR_old,  VSCR)  &
  deltaRegfile(LPIDR_old, LPIDR) &
  deltaRegfile(PIDR_old,  PIDR)  &
  deltaRegfile(MSR_old,   MSR)   &
  deltaRegfile(FPSCR_old, FPSCR) &
  deltaRegfile(CR_old,    CR)    &
  deltaRegfile(CTR_old,  CTR)    &
  deltaRegfile(LR_old,    LR)    &
  deltaRegfile(BHRB_old,  BHRB)