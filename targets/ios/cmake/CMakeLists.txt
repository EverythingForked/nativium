# Configurations
cmake_minimum_required(VERSION 3.20.0)
get_filename_component(CMAKE_SOURCE_REALPATH "${CMAKE_SOURCE_DIR}/../../../" REALPATH)

set(NATIVIUM_NAME
    "nativium"
    CACHE STRING "Project Name"
)

set(NATIVIUM_CXX_STANDARD
    "17"
    CACHE STRING "Cpp Standard"
)

set(NATIVIUM_TARGET
    "ios"
    CACHE STRING "Target Name"
)

set(NATIVIUM_VERSION
    "1.0.0"
    CACHE STRING "Version"
)

set(NATIVIUM_ARCH
    "armv8"
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

set(NATIVIUM_ROOT_PATH ${CMAKE_SOURCE_REALPATH})

set(NATIVIUM_BUILD_PATH
    ${NATIVIUM_ROOT_PATH}/build/${NATIVIUM_TARGET}/${CMAKE_BUILD_TYPE}/${NATIVIUM_GROUP}/${NATIVIUM_ARCH}
    CACHE INTERNAL ""
)

# Platform configurations
set(NATIVIUM_USE_CXX_HTTP_CLIENT
    NO
    CACHE STRING "CXX Http Client"
)

set(CMAKE_OSX_ARCHITECTURES "${NATIVIUM_PLATFORM_ARCH}")

set(DEVELOPMENT_TEAM_ID
    ""
    CACHE STRING "Development Team ID"
)

set(CODE_SIGN_IDENTITY
    ""
    CACHE STRING "Sign Identity"
)

set(FRAMEWORK_NAME
    "${NATIVIUM_NAME}"
    CACHE STRING "Framework Name"
)

set(FRAMEWORK_BUNDLE_IDENTIFIER
    "com.nativium.library"
    CACHE STRING "Bundle Identifier"
)

if(NATIVIUM_GROUP STREQUAL "ios" OR "ios_simulator")
    set(DEVICE_FAMILY
        "1,2"
        CACHE STRING "Device Family"
    )
elseif(NATIVIUM_GROUP STREQUAL "tvos" OR "tvos_simulator")
    set(DEVICE_FAMILY
        "3"
        CACHE STRING "Device Family"
    )
elseif(NATIVIUM_GROUP STREQUAL "watchos")
    set(DEVICE_FAMILY
        "4"
        CACHE STRING "Device Family"
    )
    set(CMAKE_SYSTEM_VERSION "10.5")
elseif(NATIVIUM_GROUP STREQUAL "watchos_simulator")
    set(DEVICE_FAMILY
        "4"
        CACHE STRING "Device Family"
    )
    set(CMAKE_SYSTEM_VERSION "10.5")
endif()

# Project
project(${NATIVIUM_NAME})

# Conan
include(${NATIVIUM_BUILD_PATH}/conan/conanbuildinfo.cmake)
conan_basic_setup()

# Common
include(${NATIVIUM_ROOT_PATH}/cmake/common.cmake)

# Framework links
set(NATIVIUM_FRAMEWORK_LINKS
    ${NATIVIUM_FRAMEWORK_LINKS} "-framework Foundation"
    CACHE INTERNAL ""
)

# C flags
set(NATIVIUM_CMAKE_C_FLAGS
    "${NATIVIUM_CMAKE_C_FLAGS} -fobjc-arc -fobjc-abi-version=2"
    CACHE INTERNAL ""
)

# CXX flags
set(NATIVIUM_CMAKE_CXX_FLAGS
    "${NATIVIUM_CMAKE_CXX_FLAGS} -fobjc-arc -fobjc-abi-version=2 -stdlib=libc++"
    CACHE INTERNAL ""
)

# Flags
set(CMAKE_C_FLAGS
    "${CMAKE_C_FLAGS} ${NATIVIUM_CMAKE_C_FLAGS}"
    CACHE INTERNAL ""
)

set(CMAKE_CXX_FLAGS
    "${CMAKE_CXX_FLAGS} ${NATIVIUM_CMAKE_CXX_FLAGS}"
    CACHE INTERNAL ""
)

set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS} ${CMAKE_CXX_FLAGS_DEBUG} -O0 -g")
set(CMAKE_CXX_FLAGS_MINSIZEREL "${CMAKE_CXX_FLAGS} ${CMAKE_CXX_FLAGS_MINSIZEREL} -Os")
set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "${CMAKE_CXX_FLAGS} ${CMAKE_CXX_FLAGS_RELWITHDEBINFO} -O2 -g")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS} ${CMAKE_CXX_FLAGS_RELEASE} -O3")

# Project
include_directories(${NATIVIUM_HEADER_SEARCH_PATHS})
link_directories(${NATIVIUM_LIBRARY_SEARCH_PATHS})

add_library(${NATIVIUM_NAME} SHARED ${NATIVIUM_SOURCE_FILES_MERGED})

target_link_libraries(${NATIVIUM_NAME} "${NATIVIUM_LIBRARY_LINKS}")
target_link_libraries(${NATIVIUM_NAME} "${NATIVIUM_FRAMEWORK_LINKS}")
target_link_libraries(${NATIVIUM_NAME} "${CONAN_LIBS}")

set_target_properties(
    ${NATIVIUM_NAME}
    PROPERTIES CXX_STANDARD "${NATIVIUM_CXX_STANDARD}"
               CXX_STANDARD_REQUIRED YES
               CXX_EXTENSIONS NO
               CXX_VISIBILITY_PRESET default
               FRAMEWORK TRUE
               FRAMEWORK_VERSION A
               MACOSX_FRAMEWORK_IDENTIFIER "${FRAMEWORK_BUNDLE_IDENTIFIER}"
               MACOSX_FRAMEWORK_BUNDLE_VERSION "${NATIVIUM_VERSION}"
               MACOSX_FRAMEWORK_SHORT_VERSION_STRING "${NATIVIUM_VERSION}"
               XCODE_ATTRIBUTE_PRODUCT_BUNDLE_IDENTIFIER "${FRAMEWORK_BUNDLE_IDENTIFIER}"
               XCODE_ATTRIBUTE_IPHONEOS_DEPLOYMENT_TARGET "${CMAKE_OSX_DEPLOYMENT_TARGET}"
               XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "${CODE_SIGN_IDENTITY}"
               XCODE_ATTRIBUTE_CODE_SIGNING_REQUIRED NO
               XCODE_ATTRIBUTE_DEVELOPMENT_TEAM "${DEVELOPMENT_TEAM_ID}"
               XCODE_ATTRIBUTE_TARGETED_DEVICE_FAMILY "${DEVICE_FAMILY}"
               XCODE_ATTRIBUTE_ONLY_ACTIVE_ARCH YES
               XCODE_ATTRIBUTE_SKIP_INSTALL YES
               VERSION "${NATIVIUM_VERSION}"
               SOVERSION "${NATIVIUM_VERSION}"
)

if(NATIVIUM_GROUP STREQUAL "ios_catalyst")
    set_target_properties(${NATIVIUM_NAME} PROPERTIES INSTALL_RPATH "@loader_path/../../..")
else()
    set_target_properties(${NATIVIUM_NAME} PROPERTIES XCODE_ATTRIBUTE_INSTALL_PATH "@loader_path/Frameworks")
endif()

target_compile_options(${NATIVIUM_NAME} PUBLIC "${NATIVIUM_COMPILE_OPTIONS}")

target_compile_definitions(${NATIVIUM_NAME} PRIVATE NATIVIUM_VERSION="${NATIVIUM_VERSION}" HAS_UNCAUGHT_EXCEPTIONS=0)
