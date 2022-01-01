# conan
include(${NATIVIUM_BUILD_PATH}/conan/conanbuildinfo.cmake)
conan_basic_setup()

# target files
file(GLOB H_FILES_C "${NATIVIUM_ROOT_PATH}/apps/desktop/include/*.h")
file(GLOB H_FILES_CXX "${NATIVIUM_ROOT_PATH}/apps/desktop/include/*.hpp")

file(GLOB S_FILES_CXX "${NATIVIUM_ROOT_PATH}/apps/desktop/src/*.cpp")

# module files
file(GLOB H_FILES_LOGGER_IMPL "${NATIVIUM_MODULES_PATH}/logger/implementation/cpp/nativium/util/Simple*.hpp")
file(GLOB S_FILES_LOGGER_IMPL "${NATIVIUM_MODULES_PATH}/logger/implementation/cpp/nativium/util/Simple*.cpp")

file(GLOB H_FILES_HTTP_CLIENT_IMPL "${NATIVIUM_MODULES_PATH}/http-client/implementation/cpp/nativium/net/http/Simple*.hpp")
file(GLOB S_FILES_HTTP_CLIENT_IMPL "${NATIVIUM_MODULES_PATH}/http-client/implementation/cpp/nativium/net/http/Simple*.cpp")

file(GLOB H_FILES_SHARED_DATA_IMPL "${NATIVIUM_MODULES_PATH}/shared-data/implementation/cpp/nativium/data/Simple*.hpp")
file(GLOB S_FILES_SHARED_DATA_IMPL "${NATIVIUM_MODULES_PATH}/shared-data/implementation/cpp/nativium/data/Simple*.cpp")

file(GLOB H_FILES_FILE_HELPER_IMPL "${NATIVIUM_MODULES_PATH}/file-helper/implementation/cpp/nativium/io/Simple*.hpp")
file(GLOB S_FILES_FILE_HELPER_IMPL "${NATIVIUM_MODULES_PATH}/file-helper/implementation/cpp/nativium/io/Simple*.cpp")

# header files
nativium_add_header_files("${H_FILES_C}")
nativium_add_header_files("${H_FILES_CXX}")

nativium_add_header_files("${H_FILES_LOGGER_IMPL}")
nativium_add_header_files("${H_FILES_HTTP_CLIENT_IMPL}")
nativium_add_header_files("${H_FILES_SHARED_DATA_IMPL}")
nativium_add_header_files("${H_FILES_FILE_HELPER_IMPL}")

# source files
nativium_add_source_files("${S_FILES_CXX}")

nativium_add_source_files("${S_FILES_LOGGER_IMPL}")
nativium_add_source_files("${S_FILES_HTTP_CLIENT_IMPL}")
nativium_add_source_files("${S_FILES_SHARED_DATA_IMPL}")
nativium_add_source_files("${S_FILES_FILE_HELPER_IMPL}")

# source files merged
list(APPEND NATIVIUM_SOURCE_FILES_MERGED ${NATIVIUM_SOURCE_FILES})
list(APPEND NATIVIUM_SOURCE_FILES_MERGED ${NATIVIUM_HEADER_FILES})

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

add_executable(${NATIVIUM_NAME} ${NATIVIUM_SOURCE_FILES_MERGED})

target_link_libraries(${NATIVIUM_NAME} "${NATIVIUM_LIBRARY_LINKS}")
target_link_libraries(${NATIVIUM_NAME} "${NATIVIUM_FRAMEWORK_LINKS}")
target_link_libraries(${NATIVIUM_NAME} "${CONAN_LIBS}")

set_target_properties(
    ${NATIVIUM_NAME}
    PROPERTIES CXX_STANDARD "${NATIVIUM_CXX_STANDARD}"
               CXX_STANDARD_REQUIRED YES
               CXX_EXTENSIONS NO
               PUBLIC_HEADER "${NATIVIUM_HEADER_FILES}"
)

target_compile_options(${NATIVIUM_NAME} PUBLIC "${NATIVIUM_COMPILE_OPTIONS}")

target_compile_definitions(${NATIVIUM_NAME} PRIVATE NATIVIUM_VERSION="${NATIVIUM_VERSION}" HAS_UNCAUGHT_EXCEPTIONS=0)
