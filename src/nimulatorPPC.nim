import print
import sequtils
import sugar
import strutils
import itertools

when isMainModule:
  echo("Hello, World!")
 
var memory = newSeq[uint32]()
var memory_by_bytes = open("resources/loopback_asm/firmware.bin").readAll.map(x => x.uint8)


for vec4bytes in memory_by_bytes.chunked(4):
  var vec4uint32 = vec4bytes.map(x => x.uint32)
  var mem_word = [vec4uint32[0], vec4uint32[1] shl 8, vec4uint32[2] shl 16, vec4uint32[3] shl 24]
  var folded = mem_word.foldl(a or b)
  memory.add folded

print memory.map(x => x.BiggestInt.toBin(32))