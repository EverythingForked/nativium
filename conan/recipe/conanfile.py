from conans import CMake, ConanFile


class TargetConan(ConanFile):
    name = "nativium"
    version = "1.0.0"
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
        "sqlite3:threadsafe": 1,
        "sqlite3:build_executable": False,
        "sqlite3:omit_load_extension": False,
        "poco:enable_apacheconnector": False,
        "poco:enable_cppparser": False,
        "poco:enable_crypto": True,
        "poco:enable_data": False,
        "poco:enable_data_mysql": False,
        "poco:enable_data_postgresql": False,
        "poco:enable_data_sqlite": False,
        "poco:enable_data_odbc": False,
        "poco:enable_encodings": False,
        "poco:enable_json": True,
        "poco:enable_jwt": True,
        "poco:enable_mongodb": False,
        "poco:enable_net": True,
        "poco:enable_netssl": True,
        "poco:enable_pdf": False,
        "poco:enable_pagecompiler": False,
        "poco:enable_pagecompiler_file2page": False,
        "poco:enable_pocodoc": False,
        "poco:enable_redis": False,
        "poco:enable_sevenzip": False,
        "poco:enable_util": True,
        "poco:enable_xml": True,
        "poco:enable_zip": False,
        "poco:enable_active_record": False,
        "date:header_only": True,
    }
    exports_sources = "*"
    generators = "cmake"
    apple_os_list = ["iOS", "tvOS", "watchOS", "macOS"]
    apple_mobile_os_list = ["iOS", "tvOS", "watchOS"]

    # TODO: NATIVIUM - REMOVER
    # def build(self):
    #     # initialize cmake
    #     if self.settings.os in self.apple_os_list:
    #         cmake = CMake(self, generator="Xcode")

    #         cmake.definitions["CMAKE_OSX_DEPLOYMENT_TARGET"] = self.settings.get_safe(
    #             "os.version"
    #         )
    #     else:
    #         cmake = CMake(self)

    #     # definitions
    #     cmake.definitions["CMAKE_BUILD_TYPE"] = self.settings.build_type
    #     cmake.definitions["NATIVIUM_NAME"] = self.options.get_safe("nativium_name")
    #     cmake.definitions["NATIVIUM_VERSION"] = self.options.get_safe(
    #         "nativium_version"
    #     )
    #     cmake.definitions["NATIVIUM_ARCH"] = self.options.get_safe("nativium_arch")
    #     cmake.definitions["NATIVIUM_PLATFORM_ARCH"] = self.get_platform_arch()
    #     cmake.definitions["NATIVIUM_GROUP"] = self.options.get_safe("nativium_group")
    #     cmake.definitions["NATIVIUM_TARGET"] = self.options.get_safe("nativium_target")

    #     # configure and build
    #     cmake.configure()
    #     cmake.build()

    def configure(self):
        if self.settings.os == "Windows":
            self.options["poco"].enable_netssl = False
            self.options["poco"].enable_netssl_win = True
        else:
            self.options["poco"].enable_netssl = True

        if self.settings.os in self.apple_mobile_os_list:
            self.options["sqlite3"].omit_load_extension = True
        else:
            self.options["sqlite3"].omit_load_extension = False

    def requirements(self):
        self.requires("sqlite3/3.37.1")
        self.requires("rapidjson/1.1.0")
        self.requires("openssl/1.1.1k")
        self.requires("sqlitecpp/3.1.1")
        self.requires("date/3.0.1")
        self.requires("nlohmann_json/3.9.1")
        self.requires("poco/1.11.1")

        if self.options.get_safe("nativium_target") == "tests":
            self.requires("gtest/1.11.0")
