#!/bin/bash
set -e

echo "Starting kernel build..."
cd kernel   # vào thư mục chứa source kernel

make O=out ARCH=arm64 defconfig
make O=out ARCH=arm64 -j$(nproc)

mkdir -p ../output
cp out/arch/arm64/boot/Image.gz-dtb ../output/
echo "Build completed!"
