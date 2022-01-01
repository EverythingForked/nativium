# conan
include(${NATIVIUM_BUILD_PATH}/conan/conanbuildinfo.cmake)
conan_basic_setup()

# configuration
set(NATIVIUM_USE_CXX_HTTP_CLIENT
    NO
    CACHE STRING "CXX Http Client"
)

# module files
file(GLOB H_FILES_CXX "${NATIVIUM_MODULES_PATH}/support-lib/djinni/jni/main-ext/*.hpp")
file(GLOB S_FILES_CXX "${NATIVIUM_MODULES_PATH}/support-lib/djinni/jni/main-ext/*.cpp")

file(GLOB H_FILES_SUPPORT "${NATIVIUM_MODULES_PATH}/support-lib/djinni/*.hpp")
file(GLOB S_FILES_SUPPORT "${NATIVIUM_MODULES_PATH}/support-lib/djinni/*.cpp")

file(GLOB H_FILES_SUPPORT_PLATFORM "${NATIVIUM_MODULES_PATH}/support-lib/djinni/jni/*.hpp")
file(GLOB S_FILES_SUPPORT_PLATFORM "${NATIVIUM_MODULES_PATH}/support-lib/djinni/jni/*.cpp")

file(GLOB_RECURSE H_FILES_APP_DOMAIN "${NATIVIUM_MODULES_PATH}/app-domain/gluecode/generated-src/jni/*.hpp")
file(GLOB_RECURSE S_FILES_APP_DOMAIN "${NATIVIUM_MODULES_PATH}/app-domain/gluecode/generated-src/jni/*.cpp")

file(GLOB_RECURSE H_FILES_APP_ENUMS "${NATIVIUM_MODULES_PATH}/app-enumerator/gluecode/generated-src/jni/*.hpp")
file(GLOB_RECURSE S_FILES_APP_ENUMS "${NATIVIUM_MODULES_PATH}/app-enumerator/gluecode/generated-src/jni/*.cpp")

file(GLOB_RECURSE H_FILES_APP_CORE "${NATIVIUM_MODULES_PATH}/app-core/gluecode/generated-src/jni/*.hpp")
file(GLOB_RECURSE S_FILES_APP_CORE "${NATIVIUM_MODULES_PATH}/app-core/gluecode/generated-src/jni/*.cpp")

file(GLOB_RECURSE H_FILES_APP_DATA_SERVICES "${NATIVIUM_MODULES_PATH}/app-repository/gluecode/generated-src/jni/*.hpp")
file(GLOB_RECURSE S_FILES_APP_DATA_SERVICES "${NATIVIUM_MODULES_PATH}/app-repository/gluecode/generated-src/jni/*.cpp")

file(GLOB_RECURSE H_FILES_APP_SYSTEM_SERVICES "${NATIVIUM_MODULES_PATH}/app-system-service/gluecode/generated-src/jni/*.hpp")
file(GLOB_RECURSE S_FILES_APP_SYSTEM_SERVICES "${NATIVIUM_MODULES_PATH}/app-system-service/gluecode/generated-src/jni/*.cpp")

file(GLOB_RECURSE H_FILES_APP_HELPERS "${NATIVIUM_MODULES_PATH}/app-helper/gluecode/generated-src/jni/*.hpp")
file(GLOB_RECURSE S_FILES_APP_HELPERS "${NATIVIUM_MODULES_PATH}/app-helper/gluecode/generated-src/jni/*.cpp")

file(GLOB_RECURSE H_FILES_LOGGER "${NATIVIUM_MODULES_PATH}/logger/gluecode/generated-src/jni/*.hpp")
file(GLOB_RECURSE S_FILES_LOGGER "${NATIVIUM_MODULES_PATH}/logger/gluecode/generated-src/jni/*.cpp")

file(GLOB_RECURSE H_FILES_HTTP_CLIENT "${NATIVIUM_MODULES_PATH}/http-client/gluecode/generated-src/jni/*.hpp")
file(GLOB_RECURSE S_FILES_HTTP_CLIENT "${NATIVIUM_MODULES_PATH}/http-client/gluecode/generated-src/jni/*.cpp")

file(GLOB_RECURSE H_FILES_HTTP_SERVER "${NATIVIUM_MODULES_PATH}/http-server/gluecode/generated-src/jni/*.hpp")
file(GLOB_RECURSE S_FILES_HTTP_SERVER "${NATIVIUM_MODULES_PATH}/http-server/gluecode/generated-src/jni/*.cpp")

file(GLOB_RECURSE H_FILES_FILE_HELPER "${NATIVIUM_MODULES_PATH}/file-helper/gluecode/generated-src/jni/*.hpp")
file(GLOB_RECURSE S_FILES_FILE_HELPER "${NATIVIUM_MODULES_PATH}/file-helper/gluecode/generated-src/jni/*.cpp")

file(GLOB_RECURSE H_FILES_SHARED_DATA "${NATIVIUM_MODULES_PATH}/shared-data/gluecode/generated-src/jni/*.hpp")
file(GLOB_RECURSE S_FILES_SHARED_DATA "${NATIVIUM_MODULES_PATH}/shared-data/gluecode/generated-src/jni/*.cpp")

file(GLOB_RECURSE H_FILES_DATETIME "${NATIVIUM_MODULES_PATH}/datetime/gluecode/generated-src/jni/*.hpp")
file(GLOB_RECURSE S_FILES_DATETIME "${NATIVIUM_MODULES_PATH}/datetime/gluecode/generated-src/jni/*.cpp")

if(NATIVIUM_USE_CXX_HTTP_CLIENT)
    file(GLOB H_FILES_HTTP_CLIENT_CXX "${NATIVIUM_MODULES_PATH}/http-client/implementation/cpp/nativium/net/http/Simple*.hpp")
    file(GLOB S_FILES_HTTP_CLIENT_CXX "${NATIVIUM_MODULES_PATH}/http-client/implementation/cpp/nativium/net/http/Simple*.cpp")
endif()

# header files
nativium_add_header_files("${H_FILES_CXX}")

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

# source files
nativium_add_source_files("${S_FILES_CXX}")

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

# search paths
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/support-lib")

nativium_add_search_path("${NATIVIUM_MODULES_PATH}/app-domain/gluecode/generated-src/jni")
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/app-enumerator/gluecode/generated-src/jni")
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/app-core/gluecode/generated-src/jni")
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/app-repository/gluecode/generated-src/jni")
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/app-system-service/gluecode/generated-src/jni")
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/app-helper/gluecode/generated-src/jni")

nativium_add_search_path("${NATIVIUM_MODULES_PATH}/logger/gluecode/generated-src/jni")
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/http-client/gluecode/generated-src/jni")
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/http-server/gluecode/generated-src/jni")
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/file-helper/gluecode/generated-src/jni")
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/shared-data/gluecode/generated-src/jni")
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/datetime/gluecode/generated-src/jni")

# source files merged
list(APPEND NATIVIUM_SOURCE_FILES_MERGED ${NATIVIUM_SOURCE_FILES})
list(APPEND NATIVIUM_SOURCE_FILES_MERGED ${NATIVIUM_HEADER_FILES})

# cxx flags
set(NATIVIUM_CMAKE_CXX_FLAGS
    "${NATIVIUM_CMAKE_CXX_FLAGS} -stdlib=libc++"
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
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS} ${CMAKE_CXX_FLAGS_RELEASE} -Oz")

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
               VERSION "${NATIVIUM_VERSION}"
               SOVERSION "${NATIVIUM_VERSION}"
               PUBLIC_HEADER "${NATIVIUM_HEADER_FILES}"
               LINK_FLAGS_RELEASE -s
)

target_compile_options(${NATIVIUM_NAME} PUBLIC "${NATIVIUM_COMPILE_OPTIONS}")

target_compile_definitions(${NATIVIUM_NAME} PRIVATE NATIVIUM_VERSION="${NATIVIUM_VERSION}" HAS_UNCAUGHT_EXCEPTIONS=0)
target_compile_definitions(${NATIVIUM_NAME} PRIVATE EXPERIMENTAL_AUTO_CPP_THREAD_ATTACH)
