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
