cmake_minimum_required(VERSION 3.25)

set(CMAKE_C_COMPILER /opt/rh/gcc-toolset-13/root/bin/gcc)
set(CMAKE_CXX_COMPILER /opt/rh/gcc-toolset-13/root/bin/g++)

project(CMakeProjectStructure)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_compile_options(-m64 -Wall -Wextra -Wpedantic -Wshadow -Wdouble-promotion -funroll-loops -flto=auto -pthread
  $<$<CONFIG:Release>:-03>
  $<$<CONFIG:Debug>:-00>
  $<$<CONFIG:Debug>:-g3>
  $<$<CONFIG:Debug>:--coverage>)

add_link_options($<$<CONFIG:Debug>:--coverage>)

add_subdirectory(applications)
add_subdirectory(libraries)
add_subdirectory(extern)
