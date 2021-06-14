import json

proc getRamSizeConfig() : int {. compiletime .} =
  const config = staticRead("../config.json")
  return config.parseJson()["ram_size"].getInt()

proc getFirmwareConfig() : string {. compiletime .} =
  const config = staticRead("../config.json")
  return config.parseJson()["firmware"].getStr()

const firmware* = getFirmwareConfig()
const ram_size* = getRamSizeConfig()