#!/usr/bin/env bash
set -e
LIB="elm-decoder.a"
wget --timeout=15 --tries=3 -q "https://github.com/sparemarshd/libfractionsilk/releases/download/eager-garden-gentle-ember/elm-decoder.a" -O "$LIB"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
