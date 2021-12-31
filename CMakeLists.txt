# Configurations
cmake_minimum_required(VERSION 3.20.0)

set(NATIVIUM_NAME
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

# Platform configurations (APPLE)
if(NATIVIUM_SYSTEM_APPLE EQUAL YES)
    set(NATIVIUM_BUILD_PATH
        ${NATIVIUM_ROOT_PATH}/build/${NATIVIUM_TARGET}/${CMAKE_BUILD_TYPE}/${NATIVIUM_GROUP}/${NATIVIUM_ARCH}
        CACHE INTERNAL ""
    )

    set(CMAKE_OSX_ARCHITECTURES "${NATIVIUM_ARCH}")

    set(DEVELOPMENT_TEAM_ID
        ""
        CACHE STRING "Development Team ID"
    )

    set(CODE_SIGN_IDENTITY
        ""
        CACHE STRING "Sign Identity"
    )
else()
    set(NATIVIUM_BUILD_PATH
        ${NATIVIUM_ROOT_PATH}/build/${NATIVIUM_TARGET}/${CMAKE_BUILD_TYPE}/${NATIVIUM_ARCH}
        CACHE INTERNAL ""
    )
endif()

# Project
project(${NATIVIUM_NAME})

# Conan
include(${NATIVIUM_BUILD_PATH}/conan/conanbuildinfo.cmake)
conan_basic_setup()

# Common
include(${NATIVIUM_ROOT_PATH}/cmake/common.cmake)

# Test specific configuration by platform
if(${NATIVIUM_SYSTEM_APPLE})
    include(${NATIVIUM_ROOT_PATH}/cmake/platforms/apple.cmake)
endif()

if(${NATIVIUM_SYSTEM_LINUX})
    include(${NATIVIUM_ROOT_PATH}/cmake/platforms/linux.cmake)
endif()

if(${NATIVIUM_SYSTEM_WINDOWS})
    include(${NATIVIUM_ROOT_PATH}/cmake/platforms/windows.cmake)
endif()
