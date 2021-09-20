import json
from cpu/regfiles import nil

# parse config json at compile time
const config = static:
  staticRead("../config.json")

# exported configs determined at compiletime
const firmware* = static:
  config.parseJson()["firmware"].getStr()

const ram_size* = static:
  config.parseJson()["ram_size"].getInt()

# things configured here
regfiles.MSR[0] = config.parseJson()["little_endian"].getBool().uint

const itrace*   = defined(itrace)