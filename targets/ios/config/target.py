import os

from pygemstones.io import file as f

from core import module as m


# -----------------------------------------------------------------------------
def run(proj_path, target_name, params):
    return {
        "project_name": "nativium",
        "version": "1.0.0",
        "build_types": ["Debug", "Release"],
        "archs": [
            {
                "arch": "armv7",
                "conan_arch": "armv7",
                "conan_profile": "nativium_ios_profile",
                "min_version": "9.0",
                "supported_platform": "iPhoneOS",
                "enable_bitcode": True,
                "group": "ios",
            },
            {
                "arch": "arm64",
                "conan_arch": "armv8",
                "conan_profile": "nativium_ios_profile",
                "min_version": "9.0",
                "supported_platform": "iPhoneOS",
                "enable_bitcode": True,
                "group": "ios",
            },
            {
                "arch": "x86_64",
                "conan_arch": "x86_64",
                "conan_profile": "nativium_ios_profile",
                "min_version": "9.0",
                "supported_platform": "iPhoneSimulator",
                "enable_bitcode": False,
                "group": "ios_simulator",
            },
            {
                "arch": "x86_64",
                "conan_arch": "x86_64",
                "conan_profile": "nativium_catalyst_profile",
                "min_version": "13.0",
                "supported_platform": "MacOSX",
                "enable_bitcode": False,
                "group": "ios_catalyst",
                "build_min_version": "10.15",
            },
            {
                "arch": "arm64",
                "conan_arch": "armv8",
                "conan_profile": "nativium_catalyst_profile",
                "min_version": "13.0",
                "supported_platform": "MacOSX",
                "enable_bitcode": True,
                "group": "ios_catalyst",
                "build_min_version": "10.15",
            },
            {
                "arch": "arm64",
                "conan_arch": "armv8",
                "conan_profile": "nativium_tvos_profile",
                "min_version": "11.0",
                "supported_platform": "AppleTVOS",
                "enable_bitcode": True,
                "group": "tvos",
            },
            {
                "arch": "x86_64",
                "conan_arch": "x86_64",
                "conan_profile": "nativium_tvos_profile",
                "min_version": "11.0",
                "supported_platform": "AppleTVSimulator",
                "enable_bitcode": False,
                "group": "tvos_simulator",
            },
            {
                "arch": "armv7k",
                "conan_arch": "armv7k",
                "conan_profile": "nativium_watchos_profile",
                "min_version": "5.0",
                "supported_platform": "WatchOS",
                "enable_bitcode": True,
                "group": "watchos",
            },
            {
                "arch": "arm64_32",
                "conan_arch": "armv8_32",
                "conan_profile": "nativium_watchos_profile",
                "min_version": "5.0",
                "supported_platform": "WatchOS",
                "enable_bitcode": True,
                "group": "watchos",
            },
            {
                "arch": "x86_64",
                "conan_arch": "x86_64",
                "conan_profile": "nativium_watchos_profile",
                "min_version": "5.0",
                "supported_platform": "WatchSimulator",
                "enable_bitcode": False,
                "group": "watchos_simulator",
            },
        ],
        "umbrella_header": "Nativium.h",
        "install_headers": get_header_dir_list(
            proj_path,
            target_name,
            params,
        ),
    }


# -----------------------------------------------------------------------------
def get_header_dir_list(proj_path, target_name, params):
    result = []
    filter_gen_src = []
    filter_impl_src = []

    module_list = m.get_list(proj_path)
    modules_path = os.path.join(proj_path, "modules")

    for module_name in module_list:
        gluecode_dir = os.path.join(
            modules_path,
            module_name,
            "gluecode",
        )

        module_gen_dir = os.path.join(
            gluecode_dir,
            "generated-src",
            "objc",
        )
        module_impl_dir = os.path.join(
            modules_path,
            module_name,
            "implementation",
            "objc",
        )

        # generated src
        if module_name not in filter_gen_src:
            if f.dir_exists(module_gen_dir):
                result.append(
                    {
                        "type": "dir",
                        "path": module_gen_dir,
                    }
                )

        # implementation
        if module_name not in filter_impl_src:
            if f.dir_exists(module_impl_dir):
                result.append(
                    {
                        "type": "dir",
                        "path": module_impl_dir,
                    }
                )

    return result
