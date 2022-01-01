import os

from pygemstones.io import file as f
from pygemstones.system import platform as p
from pygemstones.system import runner as r
from pygemstones.util import log as l

from core import const
from targets.tests.config import target as config


# -----------------------------------------------------------------------------
def run(params):
    proj_path = params["proj_path"]
    target_name = params["target_name"]
    target_config = config.run(proj_path, target_name, params)

    archs = target_config["archs"]
    build_types = target_config["build_types"]

    if archs and len(archs) > 0:
        for arch in archs:
            for build_type in build_types:
                l.i("Building for: {0}/{1}...".format(arch["conan_arch"], build_type))

                # prepare
                build_dir = os.path.join(
                    proj_path,
                    "build",
                    target_name,
                    build_type,
                    arch["conan_arch"],
                    "conan",
                )

                f.recreate_dir(build_dir)

                # main run args
                run_args = [
                    "conan",
                    "install",
                    os.path.join(
                        proj_path,
                        "conan",
                        "recipe",
                        const.FILE_NAME_CONANFILE_PY,
                    ),
                    "--profile",
                    os.path.join(proj_path, "conan", "profiles", arch["conan_profile"]),
                    "-s",
                    "arch={0}".format(arch["conan_arch"]),
                    "-s",
                    "build_type={0}".format(build_type),
                    "-o",
                    "nativium_name={0}".format(target_config["project_name"]),
                    "-o",
                    "nativium_arch={0}".format(arch["conan_arch"]),
                    "-o",
                    "nativium_version={0}".format(target_config["version"]),
                    "-o",
                    "nativium_target={0}".format(target_name),
                ]

                # extra run args
                if "group" in arch:
                    run_args.append("-o"),
                    run_args.append("nativium_group={0}".format(arch["group"]))

                if p.is_macos():
                    run_args.append("-s"),
                    run_args.append("os.version={0}".format(arch["min_version"]))

                # final run args
                run_args.append("--build=missing")
                run_args.append("--update")

                # execute
                r.run(run_args, build_dir)

        l.ok()
    else:
        l.e('Arch list for "{0}" is invalid or empty'.format(target_name))
