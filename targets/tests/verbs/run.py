import os

from conans import tools
from pygemstones.io import file as f
from pygemstones.system import runner as r
from pygemstones.type import list as ls
from pygemstones.util import log as l

from config import target_tests as config
from core import const


# -----------------------------------------------------------------------------
def run(params):
    proj_path = params["proj_path"]
    target_name = params["target_name"]
    target_config = config.run(proj_path, target_name, params)

    archs = target_config["archs"]
    build_types = target_config["build_types"]
    param_dry_run = ls.list_has_value(params["args"], "--dry-run")

    if param_dry_run:
        l.i("Running in dry mode...")

    if archs and len(archs) > 0:
        for arch in archs:
            for build_type in build_types:
                l.i("Building for: {0}/{1}...".format(arch["conan_arch"], build_type))

                # conan build
                build_dir = os.path.join(
                    proj_path,
                    "build",
                    target_name,
                    build_type,
                    arch["conan_arch"],
                    "target",
                )

                # prepare
                clean_build_dir = True

                if param_dry_run and os.path.isdir(build_dir):
                    clean_build_dir = False

                if clean_build_dir:
                    # clean
                    f.recreate_dir(build_dir)

                    # generate
                    run_args = [
                        "cmake",
                        "-S",
                        os.path.join(proj_path),
                        "-B",
                        build_dir,
                        "-DCMAKE_BUILD_TYPE={0}".format(build_type),
                        "-DNATIVIUM_NAME={0}".format(target_config["project_name"]),
                        "-DNATIVIUM_VERSION={0}".format(target_config["version"]),
                        "-DNATIVIUM_ARCH={0}".format(arch["conan_arch"]),
                        "-DNATIVIUM_TARGET={0}".format(target_name),
                        "-DNATIVIUM_PLATFORM_ARCH={0}".format(
                            tools.to_apple_arch(arch["conan_arch"])
                        ),
                        "-DNATIVIUM_GROUP={0}".format(
                            (arch["group"] if "group" in arch else None)
                        ),
                    ]

                    r.run(run_args, proj_path)

                # build
                run_args = [
                    "cmake",
                    "--build",
                    ".",
                ]

                r.run(run_args, build_dir)

                # copy assets
                if "assets_dir" in target_config:
                    assets_dir = target_config["assets_dir"]

                    assets_dir = os.path.join(proj_path, assets_dir)

                    if os.path.isdir(assets_dir):
                        build_assets_dir = os.path.join(
                            build_dir, "bin", os.path.basename(assets_dir)
                        )

                        f.remove_dir(build_assets_dir)

                        f.copy_dir(assets_dir, build_assets_dir, symlinks=True)

                # run
                run_args = [
                    os.path.join(
                        build_dir,
                        "bin",
                        target_config["project_name"],
                    ),
                ]

                r.run(run_args, build_dir)

        l.ok()
    else:
        l.e('Arch list for "{0}" is invalid or empty'.format(target_name))
