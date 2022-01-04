# main configurations
cmake_minimum_required(VERSION 3.20.0)

set(NATIVIUM_PROJECT_NAME
    "nativium"
    CACHE STRING "Project Name"
)

set(NATIVIUM_CXX_STANDARD
    "17"
    CACHE STRING "Cpp Standard"
)

set(NATIVIUM_TARGET
    "nativium"
    CACHE STRING "Target Name"
)

set(NATIVIUM_VERSION
    "1.0.0"
    CACHE STRING "Version"
)

set(NATIVIUM_ARCH
    "x86_64"
    CACHE STRING "Architecture"
)

set(NATIVIUM_PLATFORM_ARCH
    "arm64"
    CACHE STRING "Platform Architecture"
)

set(NATIVIUM_GROUP
    "ios"
    CACHE STRING "Group"
)

get_filename_component(CMAKE_SOURCE_REALPATH "${CMAKE_SOURCE_DIR}" REALPATH)
set(NATIVIUM_ROOT_PATH ${CMAKE_SOURCE_REALPATH})

# project
project(${NATIVIUM_PROJECT_NAME})

# common
include(${NATIVIUM_ROOT_PATH}/cmake/common.cmake)

# platform configurations
if(NATIVIUM_SYSTEM_APPLE)
    if(NATIVIUM_TARGET STREQUAL "ios")
        set(NATIVIUM_SYSTEM_APPLE_MOBILE YES)
    else()
        set(NATIVIUM_SYSTEM_APPLE_MOBILE NO)
    endif()

    if(NATIVIUM_SYSTEM_APPLE_MOBILE)
        set(NATIVIUM_BUILD_PATH
            ${NATIVIUM_ROOT_PATH}/build/${NATIVIUM_TARGET}/${CMAKE_BUILD_TYPE}/${NATIVIUM_GROUP}/${NATIVIUM_ARCH}
            CACHE INTERNAL ""
        )
    else()
        set(NATIVIUM_BUILD_PATH
            ${NATIVIUM_ROOT_PATH}/build/${NATIVIUM_TARGET}/${CMAKE_BUILD_TYPE}/${NATIVIUM_ARCH}
            CACHE INTERNAL ""
        )
    endif()
else()
    set(NATIVIUM_BUILD_PATH
        ${NATIVIUM_ROOT_PATH}/build/${NATIVIUM_TARGET}/${CMAKE_BUILD_TYPE}/${NATIVIUM_ARCH}
        CACHE INTERNAL ""
    )
endif()

# specific configuration by target
include(${NATIVIUM_TARGETS_PATH}/${NATIVIUM_TARGET}/cmake/target.cmake)
