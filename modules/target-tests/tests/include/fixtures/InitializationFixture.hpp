#include "gtest/gtest.h"

#include "nativium/core/ApplicationCore.hpp"

#include "nativium/util/Logger.hpp"
#include "nativium/util/LoggerLevel.hpp"
#include "nativium/util/SimpleLoggerPlatformService.hpp"

#include "nativium/net/http/HttpClient.hpp"
#include "nativium/net/http/HttpClientLoggerImpl.hpp"
#include "nativium/net/http/HttpRequest.hpp"
#include "nativium/net/http/HttpResponse.hpp"
#include "nativium/net/http/SimpleHttpClientPlatformService.hpp"

#include "nativium/data/SharedData.hpp"
#include "nativium/data/SimpleSharedDataPlatformService.hpp"

#include "nativium/io/FileHelper.hpp"
#include "nativium/io/SimpleFileHelperPlatformService.hpp"

#include "nativium/domain/DeviceData.hpp"
#include "nativium/domain/InitializationData.hpp"

#include <memory>

using namespace nativium::util;
using namespace nativium::net::http;
using namespace nativium::io;
using namespace nativium::data;

using namespace nativium::domain;
using namespace nativium::core;

class InitializationFixture : public ::testing::Test
{
public:
    InitializationFixture()
    {
        // initialization code here
    }

    void SetUp()
    {
        // platform services
        Logger::shared()->setPlatformService(std::make_shared<SimpleLoggerPlatformService>());
        Logger::shared()->setLevel(LoggerLevel::VERBOSE);

        FileHelper::shared()->setPlatformService(std::make_shared<SimpleFileHelperPlatformService>());
        HttpClient::shared()->setPlatformService(std::make_shared<SimpleHttpClientPlatformService>());
        SharedData::shared()->setPlatformService(std::make_shared<SimpleSharedDataPlatformService>());

        // application core
        auto homeDir = FileHelper::join(FileHelper::getHomeDir(), "nativium");
        FileHelper::createDir(homeDir);

        auto initializationData = InitializationData{"com.nativium.sample", "nativium", homeDir, 0, true};
        auto deviceData = DeviceData{"", "", "", "", "", "", "", "", "", 0, 0, 0, "", "", "", ""};

        ApplicationCore::shared()->initialize(initializationData, deviceData);

        coreIsInitialized = true;
    }

    void TearDown()
    {
        // code here will be called just after the test completes
        // ok to through exceptions from here if need be
    }

    ~InitializationFixture()
    {
        // cleanup any pending stuff, but no exceptions allowed
    }

    // put in any custom data members that you need
    bool coreIsInitialized = false;
};
