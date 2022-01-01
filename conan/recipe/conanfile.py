import os
import sys

proj_path = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", ".."))
sys.path.append(proj_path)

from conans import ConanFile
from pygemstones.io import file as f
from pygemstones.system import runner as r
from pygemstones.util import log as l

from core import module as m


class TargetConan(ConanFile):
    name = "nativium"
    settings = "os", "compiler", "build_type", "arch"
    options = {
        "shared": [True, False],
        "fPIC": [True, False],
        "nativium_name": "ANY",
        "nativium_version": "ANY",
        "nativium_arch": "ANY",
        "nativium_target": "ANY",
        "nativium_group": "ANY",
    }
    default_options = {
        "shared": False,
        "fPIC": True,
        "nativium_name": "nativium",
        "nativium_version": "ANY",
        "nativium_arch": "ANY",
        "nativium_target": "ANY",
        "nativium_group": "",
    }
    exports_sources = "*"
    generators = "cmake"

    # -----------------------------------------------------------------------------
    def configure(self):
        # extend from modules
        module_list = m.get_list(proj_path)
        modules_path = os.path.join(proj_path, "modules")

        for module_name in module_list:
            module_config_path = os.path.join(modules_path, module_name, "config")
            module_config_file = os.path.join(module_config_path, "module_conan.py")

            if f.file_exists(module_config_file):
                l.i(
                    "Nativium: Extending conan configuration with module {0}".format(
                        module_name
                    )
                )

                params = {
                    "conanfile": self,
                }

                r.run_external(
                    path=module_config_path,
                    module_name="module_conan",
                    command_name="configure",
                    command_params=params,
                    show_log=False,
                    show_error_log=True,
                    throw_error=True,
                )

        # extend from target
        target_name = str(self.options.get_safe("nativium_target"))
        targets_path = os.path.join(proj_path, "targets")
        target_config_path = os.path.join(targets_path, target_name, "config")
        target_config_file = os.path.join(target_config_path, "target_conan.py")

        if f.file_exists(target_config_file):
            l.i(
                "Nativium: Extending conan configuration with target {0}".format(
                    target_name
                )
            )

            params = {
                "conanfile": self,
            }

            r.run_external(
                path=target_config_path,
                module_name="target_conan",
                command_name="configure",
                command_params=params,
                show_log=False,
                show_error_log=True,
                throw_error=True,
            )

    # -----------------------------------------------------------------------------
    def requirements(self):
        # extend from modules
        module_list = m.get_list(proj_path)
        modules_path = os.path.join(proj_path, "modules")

        for module_name in module_list:
            module_config_path = os.path.join(modules_path, module_name, "config")
            module_config_file = os.path.join(module_config_path, "module_conan.py")

            if f.file_exists(module_config_file):
                l.i(
                    "Nativium: Extending conan requirements with module {0}".format(
                        module_name
                    )
                )

                params = {
                    "conanfile": self,
                }

                r.run_external(
                    path=module_config_path,
                    module_name="module_conan",
                    command_name="requirements",
                    command_params=params,
                    show_log=False,
                    show_error_log=True,
                    throw_error=True,
                )

        # extend from target
        target_name = str(self.options.get_safe("nativium_target"))
        targets_path = os.path.join(proj_path, "targets")
        target_config_path = os.path.join(targets_path, target_name, "config")
        target_config_file = os.path.join(target_config_path, "target_conan.py")

        if f.file_exists(target_config_file):
            l.i(
                "Nativium: Extending conan configuration with target {0}".format(
                    target_name
                )
            )

            params = {
                "conanfile": self,
            }

            r.run_external(
                path=target_config_path,
                module_name="target_conan",
                command_name="requirements",
                command_params=params,
                show_log=False,
                show_error_log=True,
                throw_error=True,
            )

    # -----------------------------------------------------------------------------
    def imports(self):
        if self.settings.os == "Windows":
            self.copy("*.dll", dst="bin", keep_path=False)
