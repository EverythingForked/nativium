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
