#!/bin/sh
crc32 ./build-fw_UniEmu-ARM_STM32-Debug/fw_UniEmu.bin | perl -e 'print pack "VV", hex(2), hex(<STDIN>)' > fw_uniemu.bin.sign