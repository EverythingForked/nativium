# module files
file(GLOB H_FILES "${PROJECT_MODULES_PATH}/app-enumerator/gluecode/generated-src/cpp/nativium/enumerator/*.hpp")
file(GLOB H_FILES_IMPL "${PROJECT_MODULES_PATH}/app-enumerator/implementation/cpp/nativium/enumerator/*.hpp")

file(GLOB S_FILES "${PROJECT_MODULES_PATH}/app-enumerator/gluecode/generated-src/cpp/nativium/enumerator/*.cpp")
file(GLOB S_FILES_IMPL "${PROJECT_MODULES_PATH}/app-enumerator/implementation/cpp/nativium/enumerator/*.cpp")

# project files
project_add_header_files("${H_FILES}")
project_add_header_files("${H_FILES_IMPL}")

project_add_source_files("${S_FILES}")
project_add_source_files("${S_FILES_IMPL}")

# search paths
project_add_search_path("${PROJECT_MODULES_PATH}/app-enumerator/gluecode/generated-src/cpp")
project_add_search_path("${PROJECT_MODULES_PATH}/app-enumerator/implementation/cpp")
