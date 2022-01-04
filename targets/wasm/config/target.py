import os


# -----------------------------------------------------------------------------
def run(proj_path, target_name, params):
    return {
        "project_name": "nativium",
        "product_name": "Nativium",
        "version": "1.0.0",
        "build_types": ["Debug", "Release"],
        "assets_dir": os.path.join("targets", "wasm", "support", "web"),
        "publis_bucket_name": "nativium",
        "publis_bucket_path": "demo",
        "append_version": True,
        "url": "https://nativium.s3.amazonaws.com/demo",
        "archs": [
            {
                "arch": "wasm",
                "conan_arch": "wasm",
                "conan_profile": "nativium_wasm_profile",
            },
        ],
    }
