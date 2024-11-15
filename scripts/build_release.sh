#!/bin/bash
cmake -S . -B ./build/release -DCMAKE_BUILD_TYPE=Release
make -C build/release -j12