# module files
file(GLOB H_FILES "${NATIVIUM_MODULES_PATH}/file-helper/gluecode/generated-src/cpp/nativium/io/FileHelper*.hpp")
file(GLOB H_FILES_IMPL "${NATIVIUM_MODULES_PATH}/file-helper/implementation/cpp/nativium/io/FileHelper*.hpp")

file(GLOB S_FILES "${NATIVIUM_MODULES_PATH}/file-helper/gluecode/generated-src/cpp/nativium/io/FileHelper*.cpp")
file(GLOB S_FILES_IMPL "${NATIVIUM_MODULES_PATH}/file-helper/implementation/cpp/nativium/io/FileHelper*.cpp")

# project files
nativium_add_header_files("${H_FILES}")
nativium_add_header_files("${H_FILES_IMPL}")

nativium_add_source_files("${S_FILES}")
nativium_add_source_files("${S_FILES_IMPL}")

# search paths
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/file-helper/gluecode/generated-src/cpp")
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/file-helper/implementation/cpp")
