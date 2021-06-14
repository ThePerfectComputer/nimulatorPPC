# nimulatorPPC

POWER9 emulator in Nim.

## Getting Started

```bash
cd resources/loopback
make
qemu-system-ppc64 -M powernv -cpu POWER9 -nographic -bios firmware.bin
nim c -r src/nimulatorPPC.nim -f resources/loopback_asm/firmware.bin --memory_depth 12
```

# Status and TODO

 - [ ] build a binary that allows me to print registers
 - [x] get mvp loopback going in QEMU
 - [x] use QEMU + gdb to figure out what is wrong
 - [ ] build gcc-ppc on Apple Silicon
 - [ ] spin up developers log on my website
   - [ ] allows you to keep track of what you've learned
         each day
 - [x] dockerfile
 - [x] read binaries
 - [x] pass path argument
 - [ ] get_mem(bytes < 16)
 - [x] determine whether or not binary fits in memory
 - [ ] start decoding
 - [x] rework loadMemory to take a file
 - [x] reword loadMemory to have docs
 - [x] add docs to repository