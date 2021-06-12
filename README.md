# nimulatorPPC

POWER9 emulator in Nim.

## Getting Started

```bash
cd resources/loopback
make
qemu-system-ppc64 -M powernv -cpu POWER9 -nographic -bios firmware.bin
```