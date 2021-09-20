import json
from cpu/regfiles import nil

# parse config json at compile time
const config = static:
  staticRead("../config.json")

# exported configs
const firmware* = static:
  config.parseJson()["firmware"].getStr()

const ram_size* = static:
  config.parseJson()["ram_size"].getInt()

# things configured here
const little_endian = static:
  var endianness = config.parseJson()["little_endian"].getBool()
  endianness.uint

regfiles.MSR[0] = little_endian

const itrace*   = defined(itrace)