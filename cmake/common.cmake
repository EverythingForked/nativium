# System
if(MSVC
   OR MSYS
   OR MINGW
)
    # for detecting Windows compilers
    set(NATIVIUM_SYSTEM_WINDOWS YES)
endif()

if(APPLE)
    # for MacOS X or iOS, watchOS, tvOS (since 3.10.3)
    set(NATIVIUM_SYSTEM_APPLE YES)
endif()

if(UNIX AND NOT APPLE)
    # for Linux, BSD, Solaris, Minix
    set(NATIVIUM_SYSTEM_LINUX YES)
endif()

# Header files
set(NATIVIUM_HEADER_FILES
    ""
    CACHE INTERNAL ""
)

# Source files
set(NATIVIUM_SOURCE_FILES
    ""
    CACHE INTERNAL ""
)

# Header search paths
set(NATIVIUM_HEADER_SEARCH_PATHS
    ""
    CACHE INTERNAL ""
)

# Source files merged
set(NATIVIUM_SOURCE_FILES_MERGED
    ""
    CACHE INTERNAL ""
)

# Library search paths
set(NATIVIUM_LIBRARY_SEARCH_PATHS
    ""
    CACHE INTERNAL ""
)

# Framework links
set(NATIVIUM_FRAMEWORK_LINKS
    ""
    CACHE INTERNAL ""
)

# Library links
set(NATIVIUM_LIBRARY_LINKS
    ""
    CACHE INTERNAL ""
)

# C flags
set(NATIVIUM_CMAKE_C_FLAGS
    "${NATIVIUM_CMAKE_C_FLAGS} -Wall"
    CACHE INTERNAL ""
)

# CXX flags
set(NATIVIUM_CMAKE_CXX_FLAGS
    "${NATIVIUM_CMAKE_CXX_FLAGS} -std=c++${NATIVIUM_CXX_STANDARD} -Wall"
    CACHE INTERNAL ""
)

# Compile options
set(NATIVIUM_COMPILE_OPTIONS
    ""
    CACHE INTERNAL ""
)

# Functions
include(${NATIVIUM_ROOT_PATH}/cmake/functions.cmake)

# Modules
set(NATIVIUM_MODULES_PATH
    "${NATIVIUM_ROOT_PATH}/modules"
    CACHE INTERNAL ""
)

nativium_add_modules()

# Targets
set(NATIVIUM_TARGETS_PATH
    "${NATIVIUM_ROOT_PATH}/targets"
    CACHE INTERNAL ""
)

nativium_add_targets()

# Source files merged
list(APPEND NATIVIUM_SOURCE_FILES_MERGED ${NATIVIUM_SOURCE_FILES})
list(APPEND NATIVIUM_SOURCE_FILES_MERGED ${NATIVIUM_HEADER_FILES})
