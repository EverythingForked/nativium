# conan
include(${NATIVIUM_BUILD_PATH}/conan/conanbuildinfo.cmake)
conan_basic_setup()

# configuration
set(NATIVIUM_USE_CXX_HTTP_CLIENT
    NO
    CACHE STRING "CXX Http Client"
)

# module files
file(GLOB H_FILES_SUPPORT "${NATIVIUM_MODULES_PATH}/support-lib/djinni/*.hpp")
file(GLOB S_FILES_SUPPORT "${NATIVIUM_MODULES_PATH}/support-lib/djinni/*.cpp")

file(GLOB H_FILES_SUPPORT_PLATFORM "${NATIVIUM_MODULES_PATH}/support-lib/djinni/objc/*.h")
file(GLOB S_FILES_SUPPORT_PLATFORM "${NATIVIUM_MODULES_PATH}/support-lib/djinni/objc/*.mm")

file(GLOB_RECURSE H_FILES_APP_DOMAIN "${NATIVIUM_MODULES_PATH}/app-domain/gluecode/generated-src/objc/*.h")
file(GLOB_RECURSE S_FILES_APP_DOMAIN "${NATIVIUM_MODULES_PATH}/app-domain/gluecode/generated-src/objc/*.mm")

file(GLOB_RECURSE H_FILES_APP_ENUMS "${NATIVIUM_MODULES_PATH}/app-enumerator/gluecode/generated-src/objc/*.h")
file(GLOB_RECURSE S_FILES_APP_ENUMS "${NATIVIUM_MODULES_PATH}/app-enumerator/gluecode/generated-src/objc/*.mm")

file(GLOB_RECURSE H_FILES_APP_CORE "${NATIVIUM_MODULES_PATH}/app-core/gluecode/generated-src/objc/*.h")
file(GLOB_RECURSE S_FILES_APP_CORE "${NATIVIUM_MODULES_PATH}/app-core/gluecode/generated-src/objc/*.mm")

file(GLOB_RECURSE H_FILES_APP_DATA_SERVICES "${NATIVIUM_MODULES_PATH}/app-repository/gluecode/generated-src/objc/*.h")
file(GLOB_RECURSE S_FILES_APP_DATA_SERVICES "${NATIVIUM_MODULES_PATH}/app-repository/gluecode/generated-src/objc/*.mm")

file(GLOB_RECURSE H_FILES_APP_SYSTEM_SERVICES "${NATIVIUM_MODULES_PATH}/app-system-service/gluecode/generated-src/objc/*.h")
file(GLOB_RECURSE S_FILES_APP_SYSTEM_SERVICES "${NATIVIUM_MODULES_PATH}/app-system-service/gluecode/generated-src/objc/*.mm")

file(GLOB_RECURSE H_FILES_APP_HELPERS "${NATIVIUM_MODULES_PATH}/app-helper/gluecode/generated-src/objc/*.h")
file(GLOB_RECURSE S_FILES_APP_HELPERS "${NATIVIUM_MODULES_PATH}/app-helper/gluecode/generated-src/objc/*.mm")

file(GLOB_RECURSE H_FILES_LOGGER "${NATIVIUM_MODULES_PATH}/logger/gluecode/generated-src/objc/*.h")
file(GLOB_RECURSE S_FILES_LOGGER "${NATIVIUM_MODULES_PATH}/logger/gluecode/generated-src/objc/*.mm")

file(GLOB_RECURSE H_FILES_HTTP_CLIENT "${NATIVIUM_MODULES_PATH}/http-client/gluecode/generated-src/objc/*.h")
file(GLOB_RECURSE S_FILES_HTTP_CLIENT "${NATIVIUM_MODULES_PATH}/http-client/gluecode/generated-src/objc/*.mm")

file(GLOB_RECURSE H_FILES_HTTP_SERVER "${NATIVIUM_MODULES_PATH}/http-server/gluecode/generated-src/objc/*.h")
file(GLOB_RECURSE S_FILES_HTTP_SERVER "${NATIVIUM_MODULES_PATH}/http-server/gluecode/generated-src/objc/*.mm")

file(GLOB_RECURSE H_FILES_FILE_HELPER "${NATIVIUM_MODULES_PATH}/file-helper/gluecode/generated-src/objc/*.h")
file(GLOB_RECURSE S_FILES_FILE_HELPER "${NATIVIUM_MODULES_PATH}/file-helper/gluecode/generated-src/objc/*.mm")

file(GLOB_RECURSE H_FILES_SHARED_DATA "${NATIVIUM_MODULES_PATH}/shared-data/gluecode/generated-src/objc/*.h")
file(GLOB_RECURSE S_FILES_SHARED_DATA "${NATIVIUM_MODULES_PATH}/shared-data/gluecode/generated-src/objc/*.mm")

file(GLOB_RECURSE H_FILES_DATETIME "${NATIVIUM_MODULES_PATH}/datetime/gluecode/generated-src/objc/*.h")
file(GLOB_RECURSE S_FILES_DATETIME "${NATIVIUM_MODULES_PATH}/datetime/gluecode/generated-src/objc/*.mm")

file(GLOB H_FILES_LOGGER_PLATFORM "${NATIVIUM_MODULES_PATH}/logger/implementation/objc/nativium/util/*.h")
file(GLOB S_FILES_LOGGER_PLATFORM "${NATIVIUM_MODULES_PATH}/logger/implementation/objc/nativium/util/*.m")

file(GLOB H_FILES_FILE_HELPER_PLATFORM "${NATIVIUM_MODULES_PATH}/file-helper/implementation/objc/nativium/io/*.h")
file(GLOB S_FILES_FILE_HELPER_PLATFORM "${NATIVIUM_MODULES_PATH}/file-helper/implementation/objc/nativium/io/*.m")

file(GLOB H_FILES_HTTP_CLIENT_PLATFORM "${NATIVIUM_MODULES_PATH}/http-client/implementation/objc/nativium/net/http/*.h")
file(GLOB S_FILES_HTTP_CLIENT_PLATFORM "${NATIVIUM_MODULES_PATH}/http-client/implementation/objc/nativium/net/http/*.m")

file(GLOB H_FILES_SHARED_DATA_PLATFORM "${NATIVIUM_MODULES_PATH}/shared-data/implementation/objc/nativium/data/*.h")
file(GLOB S_FILES_SHARED_DATA_PLATFORM "${NATIVIUM_MODULES_PATH}/shared-data/implementation/objc/nativium/data/*.m")

if(NATIVIUM_USE_CXX_HTTP_CLIENT)
    file(GLOB H_FILES_HTTP_CLIENT_CXX "${NATIVIUM_MODULES_PATH}/http-client/implementation/cpp/nativium/net/http/Simple*.hpp")
    file(GLOB S_FILES_HTTP_CLIENT_CXX "${NATIVIUM_MODULES_PATH}/http-client/implementation/cpp/nativium/net/http/Simple*.cpp")
endif()

# header files
nativium_add_header_files("${H_FILES_SUPPORT}")
nativium_add_header_files("${H_FILES_SUPPORT_PLATFORM}")

nativium_add_header_files("${H_FILES_APP_DOMAIN}")
nativium_add_header_files("${H_FILES_APP_ENUMS}")
nativium_add_header_files("${H_FILES_APP_CORE}")
nativium_add_header_files("${H_FILES_APP_DATA_SERVICES}")
nativium_add_header_files("${H_FILES_APP_SYSTEM_SERVICES}")
nativium_add_header_files("${H_FILES_APP_HELPERS}")

nativium_add_header_files("${H_FILES_LOGGER}")
nativium_add_header_files("${H_FILES_HTTP_CLIENT}")
nativium_add_header_files("${H_FILES_HTTP_SERVER}")
nativium_add_header_files("${H_FILES_FILE_HELPER}")
nativium_add_header_files("${H_FILES_SHARED_DATA}")
nativium_add_header_files("${H_FILES_DATETIME}")

nativium_add_header_files("${H_FILES_LOGGER_PLATFORM}")
nativium_add_header_files("${H_FILES_HTTP_CLIENT_PLATFORM}")
nativium_add_header_files("${H_FILES_FILE_HELPER_PLATFORM}")
nativium_add_header_files("${H_FILES_SHARED_DATA_PLATFORM}")

if(NATIVIUM_USE_CXX_HTTP_CLIENT)
    nativium_add_header_files("${H_FILES_HTTP_CLIENT_CXX}")
endif()

# source files
nativium_add_source_files("${S_FILES_SUPPORT}")
nativium_add_source_files("${S_FILES_SUPPORT_PLATFORM}")

nativium_add_source_files("${S_FILES_APP_DOMAIN}")
nativium_add_source_files("${S_FILES_APP_ENUMS}")
nativium_add_source_files("${S_FILES_APP_CORE}")
nativium_add_source_files("${S_FILES_APP_DATA_SERVICES}")
nativium_add_source_files("${S_FILES_APP_SYSTEM_SERVICES}")
nativium_add_source_files("${S_FILES_APP_HELPERS}")

nativium_add_source_files("${S_FILES_LOGGER}")
nativium_add_source_files("${S_FILES_HTTP_CLIENT}")
nativium_add_source_files("${S_FILES_HTTP_SERVER}")
nativium_add_source_files("${S_FILES_FILE_HELPER}")
nativium_add_source_files("${S_FILES_SHARED_DATA}")
nativium_add_source_files("${S_FILES_DATETIME}")

nativium_add_source_files("${S_FILES_LOGGER_PLATFORM}")
nativium_add_source_files("${S_FILES_HTTP_CLIENT_PLATFORM}")
nativium_add_source_files("${S_FILES_FILE_HELPER_PLATFORM}")
nativium_add_source_files("${S_FILES_SHARED_DATA_PLATFORM}")

if(NATIVIUM_USE_CXX_HTTP_CLIENT)
    nativium_add_source_files("${S_FILES_HTTP_CLIENT_CXX}")
endif()

# search paths
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/support-lib")

nativium_add_search_path("${NATIVIUM_MODULES_PATH}/app-domain/gluecode/generated-src/objc")
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/app-enumerator/gluecode/generated-src/objc")
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/app-core/gluecode/generated-src/objc")
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/app-repository/gluecode/generated-src/objc")
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/app-system-service/gluecode/generated-src/objc")
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/app-helper/gluecode/generated-src/objc")

nativium_add_search_path("${NATIVIUM_MODULES_PATH}/logger/gluecode/generated-src/objc")
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/http-client/gluecode/generated-src/objc")
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/http-server/gluecode/generated-src/objc")
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/file-helper/gluecode/generated-src/objc")
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/shared-data/gluecode/generated-src/objc")
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/datetime/gluecode/generated-src/objc")

# source files merged
list(APPEND NATIVIUM_SOURCE_FILES_MERGED ${NATIVIUM_SOURCE_FILES})
list(APPEND NATIVIUM_SOURCE_FILES_MERGED ${NATIVIUM_HEADER_FILES})

# platform settings
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

# framework links
set(NATIVIUM_FRAMEWORK_LINKS
    ${NATIVIUM_FRAMEWORK_LINKS} "-framework Foundation"
    CACHE INTERNAL ""
)

# c flags
set(NATIVIUM_CMAKE_C_FLAGS
    "${NATIVIUM_CMAKE_C_FLAGS} -fobjc-arc -fobjc-abi-version=2"
    CACHE INTERNAL ""
)

# cxx flags
set(NATIVIUM_CMAKE_CXX_FLAGS
    "${NATIVIUM_CMAKE_CXX_FLAGS} -fobjc-arc -fobjc-abi-version=2 -stdlib=libc++"
    CACHE INTERNAL ""
)

# flags
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

# project
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
