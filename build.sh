#!/bin/bash
set -e

echo "Starting kernel build..."
make O=out ARCH=arm64 defconfig
make O=out ARCH=arm64 -j$(nproc)

mkdir -p output
cp out/arch/arm64/boot/Image.gz-dtb output/
echo "Build completed!"
