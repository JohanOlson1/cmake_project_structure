file(GLOB SourceFiles src/*.cc)

add_library(library1 STATIC ${SourceFiles})

target_include_directories(library1 PUBLIC src/)

target_link_libraries(
    library1
    PRIVATE
)