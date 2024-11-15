#!/bin/bash
cmake -S . -B ./build/debug -DCMAKE_BUILD_TYPE=Debug
make -C build/debug -j12