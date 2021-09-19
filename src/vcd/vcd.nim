from strformat import fmt
from strutils import toBin

## types
type
  timescale* = enum
    pico
    nano
    micro
    milli

  signal* = object
    UID      : uint
    name     : string
    num_bits : Positive
    data     : uint64

  scope* = ref object
    name             : string
    children_scopes  : seq[scope]
    children_signals : seq[signal]

## private variables
var root*         = scope(name : "root")
var vcd_file*     = ""
var timestamp     = 0.uint

## public variables
var signal_count  = 0.uint
var vcd_ctx_built  = false
var vcd_time_scale = nano

## private functions
proc `$`(timescale : timescale) : string = 
  case timescale:
    of pico:
      "ps"
    of nano:
      "ns"
    of micro:
      "us"
    of milli:
      "ms"

proc vcd_write_line(line : string) = 
  vcd_file &= line & "\n"

proc traverse_scopes(root : scope) = 
  fmt"$scope module {root.name} $end".vcd_write_line

  for sig in root.children_signals:
    fmt"$var wire {sig.num_bits} UID{sig.UID} {sig.name} $end".vcd_write_line

  for scope in root.children_scopes:
    traverse_scopes(scope)

  "$upscope $end".vcd_write_line

proc write_inits(root : scope) = 

  for sig in root.children_signals:
    var bin_string = sig.data.BiggestInt.toBin(sig.num_bits)
    fmt"b{bin_string} UID{sig.UID}".vcd_write_line

  for scope in root.children_scopes:
    write_inits(scope)

## public functions
proc set*(sig : signal, value : uint64) = 
  if sig.data != value:
    var bin_string = value.BiggestInt.toBin(sig.num_bits)
    fmt"b{bin_string} UID{sig.UID}".vcd_write_line

proc register_new_scope*(name : string, parent : var scope = root) : scope =
  assert not vcd_ctx_built
  var new_scope = scope(name : name)
  parent.children_scopes.add(new_scope)
  new_scope

proc register_new_signal*(name : string,
                          num_bits : Positive,
                          init = 0.uint,
                          parent : var scope = root) : signal = 
  assert not vcd_ctx_built
  signal_count += 1
  var new_signal = signal(UID : signal_count,
                          name : name,
                          num_bits : num_bits,
                          data : init)
  parent.children_signals.add(new_signal)
  new_signal

proc tick*(step : Positive) = 
  assert vcd_ctx_built
  timestamp += step.uint
  fmt"#{timestamp}".vcd_write_line


proc set_timescale*(timescale : timescale) = 
  assert not vcd_ctx_built
  vcd_time_scale = timescale

proc freeze*() = 
  assert not vcd_ctx_built
  "$date today $end".vcd_write_line
  fmt"$timescale 1 {vcd_time_scale} $end".vcd_write_line
  "".vcd_write_line

  traverse_scopes(root)
  "$enddefinitions $end".vcd_write_line
  "".vcd_write_line

  "#0".vcd_write_line
  "$dumpvars".vcd_write_line
  write_inits(root)
  "$end".vcd_write_line
  "".vcd_write_line

  vcd_ctx_built = true