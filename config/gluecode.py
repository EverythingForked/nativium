# -----------------------------------------------------------------------------
def run(proj_path, target_name, params):
    return {
        "cpp_namespace_prefix": "nativium",
        "cpp_include_prefix": "nativium",
        "objc_prefix": "NTV",
        "java_package_prefix": "com.nativium",
        "jni_class_prefix": "NTV",
        "jni_file_prefix": "NTV",
        "modules": [
            "app-enumerator",
            "app-domain",
            "app-system-service",
            "app-repository",
            "app-helper",
            "app-core",
            "datetime",
            "file-helper",
            "http-client",
            "http-server",
            "logger",
            "shared-data",
            "string-helper",
        ],
    }
