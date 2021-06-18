# nimulatorPPC

POWER9 emulator in Nim implementing the ISA as specified in 
[this document](https://ibm.ent.box.com/s/1hzcwkwf8rbju5h9iyf44wm94amnlcrv).

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

## Verifying with Qemu
The generated firmware should also work in Qemu

```
qemu-system-ppc64 -M powernv -cpu POWER9 -nographic -bios resources/loopback_asm/firmware.bin
```

# Design

![](docs/architecture.png)

The architecture of this simulator is very simple at the moment.
We fetch an instruction, determine it associated mnemonic, and finally
execute that instruction. This loop repeats until the simulator is 
terminated.

# Status 

Not yet ready!!

Currently just advances the program counter and decodes instructions
for the most part. Does however support execution of the following 
instructions.

# Instruction Support
 - [ ] add[o][.]
 - [ ] addc[o][.]
 - [ ] adde[o][.]
 - [ ] addi
 - [ ] addic
 - [ ] addic.
 - [x] addis
 - [ ] addze[o][.]
 - [ ] and[.]
 - [ ] andc[.]
 - [ ] andi.
 - [ ] cmp
 - [ ] cmpi
 - [ ] cmpl
 - [ ] cmpli
 - [ ] divd[o][.]
 - [ ] divde[o][.]
 - [ ] divwu[o][.]
 - [ ] extsb[.]
 - [ ] extsw[.]
 - [ ] mulhd[.]
 - [ ] mulld[o][.]
 - [ ] mulli
 - [ ] mullw[o][.]
 - [ ] rldcr[.]
 - [ ] rldicl[.]
 - [ ] rldicr[.]
 - [ ] rldimi[.]
 - [ ] rlwimi[.]
 - [ ] rlwinm[.]
 - [ ] sld[.]
 - [ ] slw[.]
 - [ ] srad[.]
 - [ ] sradi[.]
 - [ ] sraw[.]
 - [ ] srawi[.]
 - [ ] srd[.]
 - [ ] srw[.]
 - [ ] subf[o][.]
 - [ ] subfc[o][.]
 - [ ] subfe[o][.]
 - [ ] subfic
 - [ ] fnmsub[.]
 - [ ] cntlzd[.]
 - [ ] cntlzw[.]
 - [ ] neg[o][.]
 - [ ] nor[.]
 - [ ] or[.]
 - [ ] orc[.]
 - [ ] ori
 - [ ] oris
 - [ ] xor[.]
 - [ ] xori
 - [ ] xoris
 - [ ] b[l][a]
 - [ ] bc[l][a]
 - [ ] bcctr[l]
 - [ ] bclr[l]
 - [ ] bctar[l]
 - [ ] lbz
 - [ ] lbzu
 - [ ] lbzx
 - [ ] ld
 - [ ] ldu
 - [ ] ldx
 - [ ] lhax
 - [ ] lhz
 - [ ] lhzu
 - [ ] lwa
 - [ ] lwax
 - [ ] lwz
 - [ ] lwzx
 - [ ] stb
 - [ ] stbu
 - [ ] stbx
 - [ ] std
 - [ ] stdu
 - [ ] stdx
 - [ ] sth
 - [ ] sthu
 - [ ] sthx
 - [ ] stw
 - [ ] stwu
 - [ ] stwx
 - [ ] mfcr
 - [ ] mfspr
 - [ ] mtcrf
 - [ ] mtocrf

# TODO

 - [ ] populate .gitignore with all binaries to possibly be generated
 - [ ] build a binary that allows me to print registers
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

 - mvtspr needs to redirect when it hits a dedicated special SPR
 such as XER for example