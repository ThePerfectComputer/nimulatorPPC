type
  PosU = 1.uint..uint.high

  signal* = object
    UID      : uint
    name     : string
    num_bits : PosU
    data     : uint64

  scope* = ref object
    name             : string
    children_scopes  : seq[scope]
    children_signals : seq[signal]

var signal_count  = 0.uint
var root*         = scope(name : "root")

var vcd_ctx_built = false

proc register_new_scope*(name : string, parent : var scope = root) : scope =
  assert not vcd_ctx_built
  var new_scope = scope(name : name)
  parent.children_scopes.add(new_scope)
  new_scope

proc register_new_signal*(name : string,
                          num_bits : PosU,
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

proc traverse_scopes(root : scope) = 
  echo "$scope module ", root.name, " $end"

  for sig in root.children_signals:
    echo "$var integer ", sig.num_bits, " UID", sig.UID, " ", sig.name, " $end"

  for scope in root.children_scopes:
    traverse_scopes(scope)

  echo "$upscope $end"

proc freeze*() = 
  assert not vcd_ctx_built
  echo "$date today $end"
  echo "$timescale 1 ns $end"
  traverse_scopes(root)
  echo "$enddefinitions $end"
  echo "#0"
  echo "$dumpvars"