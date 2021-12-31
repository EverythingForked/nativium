# module files
file(GLOB H_FILES "${NATIVIUM_MODULES_PATH}/http-server/gluecode/generated-src/cpp/nativium/net/http/*.hpp")
file(GLOB H_FILES_IMPL "${NATIVIUM_MODULES_PATH}/http-server/implementation/cpp/nativium/net/http/*.hpp")
file(GLOB H_FILES_CONTROLLER "${NATIVIUM_MODULES_PATH}/http-server/implementation/cpp/nativium/net/http/controller/*.hpp")
file(GLOB H_FILES_HELPER "${NATIVIUM_MODULES_PATH}/http-server/implementation/cpp/nativium/net/http/helper/*.hpp")

file(GLOB S_FILES "${NATIVIUM_MODULES_PATH}/http-server/gluecode/generated-src/cpp/nativium/net/http/*.cpp")
file(GLOB S_FILES_IMPL "${NATIVIUM_MODULES_PATH}/http-server/implementation/cpp/nativium/net/http/*.cpp")
file(GLOB S_FILES_CONTROLLER "${NATIVIUM_MODULES_PATH}/http-server/implementation/cpp/nativium/net/http/controller/*.cpp")
file(GLOB S_FILES_HELPER "${NATIVIUM_MODULES_PATH}/http-server/implementation/cpp/nativium/net/http/helper/*.cpp")

# project files
nativium_add_header_files("${H_FILES}")
nativium_add_header_files("${H_FILES_IMPL}")
nativium_add_header_files("${H_FILES_CONTROLLER}")
nativium_add_header_files("${H_FILES_HELPER}")

nativium_add_source_files("${S_FILES}")
nativium_add_source_files("${S_FILES_IMPL}")
nativium_add_source_files("${S_FILES_CONTROLLER}")
nativium_add_source_files("${S_FILES_HELPER}")

# search paths
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/http-server/gluecode/generated-src/cpp")
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/http-server/implementation/cpp")
