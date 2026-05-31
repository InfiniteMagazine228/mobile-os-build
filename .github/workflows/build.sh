#!/bin/bash
set -e

# Ví dụ build kernel
make O=out ARCH=arm64 <defconfig>
make O=out ARCH=arm64 -j$(nproc)

# Copy output
cp out/arch/arm64/boot/Image.gz-dtb ./output/
