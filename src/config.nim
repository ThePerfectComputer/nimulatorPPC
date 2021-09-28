import json

# parse config json at compile time
const config = static:
  staticRead("../config.json")

# exported configs determined at compiletime
const firmware* = static:
  config.parseJson()["firmware"].getStr()

const ram_size* = static:
  config.parseJson()["ram_size"].getInt()

# things configured here
const little_endian* = config.parseJson()["little_endian"].getBool().uint64

const itrace*   = defined(itrace)
const csvtrace*   = defined(csvtrace)