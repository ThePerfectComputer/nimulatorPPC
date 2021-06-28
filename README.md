# nimulatorPPC

POWER9 emulator in Nim implementing the ISA as specified in 
[this document](https://ibm.ent.box.com/s/1hzcwkwf8rbju5h9iyf44wm94amnlcrv).

This simulator is designed such that it is easy to understand and follow.
The hope is that by studying it, the motivated individual should be able
to confidently design a POWER CPU in an HDL or RTL of their choice.

# Status 
Not yet ready!!

 - [x] full decoder with field select for all mnemonics
 - [ ] support for virtual memory(hopefully to be added in early July).

Supported instructions listed in 
[docs/supported_instructions.md](docs/supported_instructions.md).

# Getting Started
## Dependencies
 - gcc-powerpc64le-linux-gnu
 - [nim](https://nim-lang.org/install.html)
 - (optional) [qemu](https://wiki.qemu.org/Documentation/Platforms/PowerPC)
```bash
apt-get update && apt-get install -y gcc-powerpc64le-linux-gnu make nim
```

## Running
Modify ``config.json`` with desired simulator configuration.

```bash
git clone https://github.com/BracketMaster/nimulatorPPC
cd nimulatorPPC
pushd resources/loopback
make
popd
nimble install print itertools
nim c -r src/nimulatorPPC.nim
```

## Running With Debug Mode

You can also simulate the CPU with a debug mode enabled by:

```
nim c -d:dcpu -r src/nimulatorPPC
```

## Verifying with Qemu
The generated firmware should also work in Qemu

```
qemu-system-ppc64 -M powernv -cpu POWER9 -nographic -bios resources/loopback_asm/firmware.bin
```

# Design

![](docs/rendered/architecture.pdf)

The architecture of this simulator is very simple at the moment.
We fetch an instruction, determine its associated mnemonic, and finally
execute that instruction. This loop repeats until the simulator is 
terminated.

# Adding a New Instruction

See [adding a new instruction](docs/adding_a_new_instruction.md) for more
details.

# TODO

 - [ ] populate .gitignore with all binaries to possibly be generated
 - [ ] build a binary that allows me to print registers
 - [ ] add exception stack print and general stack tracing
 - [ ] go through and add docs to sources
 - [ ] make opcode error message red
 - [x] get mvp loopback going in QEMU
 - [x] use QEMU + gdb to figure out what is wrong
 - [x] dockerfile
 - [x] read binaries
 - [x] pass path argument
 - [x] support bi-endian reads
 - [x] MnemonicEnum -> bitPat
 - [x] MnemonicEnum -> FormEnum
 - [x] start decoding
    - [x] use xor for pattern matching(should work?)
    - [x] test endianness with decode
 - [x] FormEnum -> FieldSelect
 - [ ] Add list of supported instructions
 - [ ] Add sane debug and logging facilities
 - [x] support bi-endian writes
 - [x] convert from seq to arr
 - [x] replace bitslice with use non-mutating bitsliced
 - [x] determine whether or not binary fits in memory
 - [x] rework loadMemory to take a file
 - [x] reword loadMemory to have docs
 - [x] add docs to repository
 - [ ] support quad reads
 - [ ] find pages in POWER manual with info on register 

# Edge Cases

 - [ ] mvtspr needs to redirect when it hits a dedicated special SPR
 such as XER for example
 - [ ] does CRO:3 need to be preserved across instructions that do compares
 for example but can't have overflows by definition?