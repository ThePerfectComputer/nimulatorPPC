import print
import sequtils
import sugar
import strutils
import loadMemory

var memory = loadMemory()
print memory.map(x => x.BiggestInt.toBin(32))