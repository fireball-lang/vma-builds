#!/usr/bin/bash
set -e

if [ -d "vma" ]; then
    rm -rf vma
fi
if [ -d "build" ]; then
    rm -rf build
fi

git clone --depth 1 --branch="$VERSION" https://github.com/GPUOpen-LibrariesAndSDKs/VulkanMemoryAllocator vma

cmake -S . -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build --config Release
