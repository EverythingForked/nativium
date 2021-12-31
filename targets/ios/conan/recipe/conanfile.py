from conans import ConanFile, CMake, tools


class TargetConan(ConanFile):
    name = "ios"
    version = "1.0.0"
    settings = "os", "compiler", "build_type", "arch"
    options = {
        "shared": [True, False],
        "fPIC": [True, False],
        "nativium_name": "ANY",
        "nativium_version": "ANY",
        "nativium_arch": "ANY",
        "nativium_group": "ANY",
    }
    default_options = {
        "shared": False,
        "fPIC": True,
        "nativium_name": "nativium",
        "nativium_version": "ANY",
        "nativium_arch": "ANY",
        "nativium_group": "",
        "sqlite3:threadsafe": 1,
        "sqlite3:build_executable": False,
        "sqlite3:omit_load_extension": True,
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

    def build(self):
        cmake = CMake(self, generator="Xcode")
        cmake.definitions["CMAKE_BUILD_TYPE"] = self.settings.build_type
        cmake.definitions["PROJECT_CONFIG_NAME"] = self.options.get_safe(
            "nativium_name"
        )
        cmake.definitions["PROJECT_CONFIG_VERSION"] = self.options.get_safe(
            "nativium_version"
        )
        cmake.definitions["PROJECT_CONFIG_ARCH"] = self.options.get_safe(
            "nativium_arch"
        )
        cmake.definitions["PROJECT_CONFIG_GROUP"] = self.options.get_safe(
            "nativium_group"
        )
        cmake.definitions["PROJECT_CONFIG_PLATFORM_ARCH"] = self.get_platform_arch()
        cmake.configure()
        cmake.build()

    def configure(self):
        if self.settings.os == "tvOS":
            self.options["poco"].enable_fork = False
        elif self.settings.os == "watchOS":
            self.options["poco"].enable_fork = False

    def requirements(self):
        self.requires("sqlite3/3.36.0")
        self.requires("rapidjson/1.1.0")
        self.requires("openssl/1.1.1k")
        self.requires("sqlitecpp/3.1.1")
        self.requires("date/3.0.1")
        self.requires("nlohmann_json/3.9.1")
        self.requires("poco/1.11.1")

    def get_platform_arch(self):
        platform_arch = tools.to_apple_arch(
            self.options.get_safe("nativium_arch"),
        )

        return platform_arch
