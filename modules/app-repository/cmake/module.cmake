# module files
file(GLOB H_FILES "${PROJECT_MODULES_PATH}/app-repository/gluecode/generated-src/cpp/nativium/repository/*.hpp")
file(GLOB H_FILES_IMPL "${PROJECT_MODULES_PATH}/app-repository/implementation/cpp/nativium/repository/*.hpp")

file(GLOB S_FILES "${PROJECT_MODULES_PATH}/app-repository/gluecode/generated-src/cpp/nativium/repository/*.cpp")
file(GLOB S_FILES_IMPL "${PROJECT_MODULES_PATH}/app-repository/implementation/cpp/nativium/repository/*.cpp")

# project files
project_add_header_files("${H_FILES}")
project_add_header_files("${H_FILES_IMPL}")

project_add_source_files("${S_FILES}")
project_add_source_files("${S_FILES_IMPL}")

# search paths
project_add_search_path("${PROJECT_MODULES_PATH}/app-repository/gluecode/generated-src/cpp")
project_add_search_path("${PROJECT_MODULES_PATH}/app-repository/implementation/cpp")
