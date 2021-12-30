import os

from pygemstones.io import file as f
from pygemstones.system import runner as r
from pygemstones.util import log as l

from core import target


# -----------------------------------------------------------------------------
def run(params):
    args = params["args"]

    if len(args) > 0:
        action = args[0]

        if action:
            if action == "setup":
                setup(params)
            else:
                show_help(params)
        else:
            show_help(params)
    else:
        show_help(params)


# -----------------------------------------------------------------------------
def setup(params):
    proj_path = params["proj_path"]
    targets = target.get_all_targets(proj_path)

    l.i("Creating default profile...")

    # create default profile
    r.run(
        [
            "conan",
            "profile",
            "new",
            "default",
            "--detect",
            "--force",
        ],
        cwd=os.getcwd(),
    )

    # copy all targets profile
    l.i("Copying files...")

    if targets:
        for target_item in targets:
            files = f.find_files(
                os.path.join(
                    proj_path,
                    "targets",
                    target_item,
                    "conan",
                    "profile",
                ),
                "*profile",
            )

            if files:
                conan_profile_dir = os.path.join(
                    f.home_dir(),
                    "conan",
                    "profiles",
                )

                for item in files:
                    filename = os.path.basename(item)
                    l.i('Copying profile "{0}"...'.format(filename))

                    f.copy_file(item, os.path.join(conan_profile_dir, filename))

    # add darwin toolchain
    l.i("Adding darwin toolchain repository...")

    r.run(
        [
            "conan",
            "remote",
            "add",
            "darwin-toolchain",
            "https://ezoredrepository.jfrog.io/artifactory/api/conan/conan-local",
            "--force",
        ],
        cwd=os.getcwd(),
    )

    l.ok()


# -----------------------------------------------------------------------------
def show_help(params):
    l.colored("Available actions:\n", l.MAGENTA)
    l.m("  - setup")


# -----------------------------------------------------------------------------
def get_description(params):
    return "Conan manager tool"
