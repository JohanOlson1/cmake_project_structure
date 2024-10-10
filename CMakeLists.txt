cmake_minimum_required(VERSION 3.25)

set(CMAKE_C_COMPILER /opt/rh/gcc-toolset-13/root/bin/gcc)
set(CMAKE_CXX_COMPILER /opt/rh/gcc-toolset-13/root/bin/g++)

project(CMakeProjectStructure)

set(CMAKE_CXX_FLAGS "-g -O2")

add_subdirectory(executables)
add_subdirectory(libraries)
add_subdirectory(extern)

