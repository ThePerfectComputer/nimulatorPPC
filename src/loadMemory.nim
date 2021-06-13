import os
import sequtils
import sugar
import itertools
import math

proc loadMemory*(mem_depth : int, firmware_filepath : string) : seq[uint32] = 
  var memory = newSeq[uint32]()
  
  # load firmware into memory seq
  var memory_by_bytes = open(firmware_filepath).readAll.map(x => x.uint8)

  # can the specified memory size(mem_depth) contain the firmware?
  try: 
    var mem_len = ceil(memory_by_bytes.len / 4).int
    assert mem_len <= mem_depth
  except Exception as e:
    echo e.msg
    echo "mem_depth = ", mem_depth, " is too small to contain firmware from", firmware_filepath
    quit(1)
  
  # load mem
  for vec4bytes in memory_by_bytes.chunked(4):
    var vec4uint32 = vec4bytes.map(x => x.uint32)
    var mem_word = [vec4uint32[0], vec4uint32[1] shl 8, vec4uint32[2] shl 16, vec4uint32[3] shl 24]
    var folded = mem_word.foldl(a or b)
    memory.add folded

  # pad any remaining space in the memory seq with 0s
  while memory.len < mem_depth:
    memory.add(1)
   
  return memory