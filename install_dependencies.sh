#!/bin/bash

echo "Updating package database..."
pacman -Sy

echo "Installing Make and MinGW-w64 UCRT64 Toolchain..."
pacman -S --needed --noconfirm make mingw-w64-ucrt-x86_64-toolchain

echo ""
echo "Installation complete."
echo "You can now compile the project using: make -f Makefile.mingw"
