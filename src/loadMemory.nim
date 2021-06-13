import argparse
import os
import sequtils
import sugar
import itertools

proc loadMemory*() : seq[uint32] = 
  var memory = newSeq[uint32]()
  
  var p = newParser:
    option("-f", "--firmware", help="firmware file for simulator to execute")
  var opts = p.parse(commandLineParams())
   
  try:
    assert opts.firmware != ""
  except Exception as e:
    echo p.help
    quit(0)
  
  var memory_by_bytes = open(opts.firmware).readAll.map(x => x.uint8)
  for vec4bytes in memory_by_bytes.chunked(4):
    var vec4uint32 = vec4bytes.map(x => x.uint32)
    var mem_word = [vec4uint32[0], vec4uint32[1] shl 8, vec4uint32[2] shl 16, vec4uint32[3] shl 24]
    var folded = mem_word.foldl(a or b)
    memory.add folded
  
  return memory