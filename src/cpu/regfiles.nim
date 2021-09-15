type
  uint128* = object
    lo* : uint64
    hi* : uint64

  Regfile32*[depth : static[1.uint..uint.high]] = object
    data : array[depth, uint32]
    name : string

  Regfile64*[depth : static[1.uint..uint.high]] = object
    data : array[depth, uint64]
    name : string

  Regfile128*[depth : static[1.uint..uint.high]] = object
    data : array[depth, uint128]
    name : string
  
  Regfile* = Regfile64 or Regfile32 or Regfile128
  Data*    = uint32 or uint64 or uint128

proc `[]`*(regfile : Regfile, index : SomeInteger) :  uint32 or uint64 or uint128 =
  return regfile.data[index]

proc `[]=`*(regfile : var Regfile, index : SomeInteger, value : Data) =
  # echo "got write to ", regfile.name
  regfile.data[index] = value

proc set_name(regfile : var Regfile, name : string) =
  regfile.name = name


# you can find a link to the POWER ISA manual in the
# README.md in the root directory

# below we have multiple regfiles. having an old copy
# of each regfile is useful during debugging and allows
# us to see what changed in a regfile after executing
# a certain instruction

var GPR* = block:
  var GPR : Regfile64[32]
  GPR.set_name("GPR")
  GPR

var FPR*: array[32, uint64] # page 124 in the POWER3.0B ISA manual

var VR*: array[32, uint128]  # page 232 in the POWER3.0B ISA manual
var VSR*: array[64, uint128] # page 364 in the POWER3.0B ISA manual

# TODO : find info for TDOOMED
# TDOOMED

var BESCR* : array[1, uint64] # page 902 in the POWER3.0B ISA manual
var AMOR*  : array[1, uint64] # its technically an SPR - page 972

# TODO : is LR a solo register? - or part of an SPR?
var XER*   : array[1, uint64] # on page 10, also on page 971 as SPR[1]
var VSCR*  : array[1, uint32] # on page 10
var LPIDR* : array[1, uint32] # on page 931
var PIDR*  : array[1, uint64] # on page 962
var MSR*   : array[1, uint64] # on page 962

# TODO : Not actually sure that SLB is a register
var FPSCR* : array[1, uint32]  # on page 10
var CR*    : array[1, uint32]  # on page 10
var CTR*   : array[1, uint64]  # on page 32
var LR*    : array[1, uint64]  # on page 32
var BHRB*  : array[32, uint64] # on page 10