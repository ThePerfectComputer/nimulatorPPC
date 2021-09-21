from strformat import fmt
import ../config
when itrace: import ../vcd/vcd

when itrace:
  type
    RegfileBase[depth : static[Positive]] = ref object of RootObj
      name : string
      traces : array[depth, signal]
else:
  type
    RegfileBase[depth : static[Positive]] = ref object of RootObj
      name : string

type
  uint128* = object
    lo* : uint64
    hi* : uint64

  Regfile32*[depth : static[Positive]]  = ref object of RegfileBase[depth]
    data : array[depth, uint32]

  Regfile64*[depth : static[Positive]]  = ref object of RegfileBase[depth]
    data : array[depth, uint64]

  Regfile128*[depth : static[Positive]] = ref object of RegfileBase[depth]
    data : array[depth, uint128]
  
  Regfile* = Regfile64 or Regfile32 or Regfile128
  Data*    = uint32 or uint64 or uint128

when itrace:
  var regfiles_scope = register_new_scope("Regfiles")

template mk_reg(reg_type, as_name, depth : untyped) : untyped =
  var res = reg_type[depth]()
  res.name = as_name

  # if we need to do VCD dumping
  when config.itrace:
    var curr_scope = register_new_scope(as_name, parent = regfiles_scope)

    for trace_index in 0..res.traces.high:
      # var sig_name = fmt"{as_name}({trace_index})"
      var sig_name = as_name & "(" & $trace_index & ")"
      res.traces[trace_index] = register_new_signal(sig_name, 64, 0, curr_scope)
  
  res

proc `[]`*(regfile : Regfile, index : SomeInteger) :  uint32 or uint64 or uint128 =
  return regfile.data[index]

proc `[]=`*(regfile : var Regfile, index : SomeInteger, value : Data) =
  regfile.data[index] = value
  
  when config.itrace:
    regfile.traces[index].set(value)

# you can find a link to the POWER ISA manual in the
# README.md in the root directory

# below we have multiple regfiles. having an old copy
# of each regfile is useful during debugging and allows
# us to see what changed in a regfile after executing
# a certain instruction

var GPR* = Regfile64.mk_reg("GPR", 32)

var FPR*: array[32, uint64] # page 124 in the POWER3.0B ISA manual

var VR*: array[32, uint128]  # page 232 in the POWER3.0B ISA manual
var VSR*: array[64, uint128] # page 364 in the POWER3.0B ISA manual

# TODO : find info for TDOOMED
# TDOOMED

var BESCR* : array[1, uint64] # page 902 in the POWER3.0B ISA manual
var AMOR*  : array[1, uint64] # its technically an SPR - page 972

# TODO : is LR a solo register? - or part of an SPR?
var XER*    = Regfile64.mk_reg("XER"  , 1) # on page 10, also on page 971 as SPR[1]
var VSCR*   = Regfile32.mk_reg("VSCR" , 1) # on page 10
var LPIDR*  = Regfile32.mk_reg("LPIDR", 1) # on page 931
var PIDR*   = Regfile64.mk_reg("PIDR" , 1) # on page 962
var MSR*    = Regfile64.mk_reg("MSR"  , 1) # on page 962

# TODO : Not actually sure that SLB is a register
var FPSCR* : array[1, uint32]  # on page 10
var CR*    : array[1, uint32]  # on page 10
var CTR*   : array[1, uint64]  # on page 32
var LR*    : array[1, uint64]  # on page 32
var BHRB*  : array[32, uint64] # on page 10