# module files
file(GLOB H_FILES "${NATIVIUM_MODULES_PATH}/json/implementation/cpp/nativium/json/*.hpp")

# project files
nativium_add_header_files("${H_FILES}")

# search paths
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/json/implementation/cpp")
