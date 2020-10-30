# Adopted from https://github.com/microsoft/vcpkg/blob/master/ports/jbigkit/CMakeLists.txt
cmake_minimum_required(VERSION 3.4)
project(libjbig C)

set(SOURCES
    "libjbig/jbig.c"
    "libjbig/jbig_ar.c"
    "libjbig/jbig85.c")

set(HEADERS
    "libjbig/jbig.h"
    "libjbig/jbig_ar.h"
    "libjbig/jbig85.h"
)

add_library(jbig ${SOURCES})

install(
    TARGETS jbig
    RUNTIME DESTINATION bin
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib
)

install(
    FILES ${HEADERS}
    DESTINATION include)
