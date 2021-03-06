#include "ApplicationCoreImpl.hpp"

#include <memory>
#include <string>

namespace nativium
{
namespace core
{

std::shared_ptr<ApplicationCoreImpl> ApplicationCoreImpl::instance = nullptr;

ApplicationCoreImpl::ApplicationCoreImpl()
{
    // ignore
}

std::shared_ptr<ApplicationCore> ApplicationCore::shared()
{
    return ApplicationCoreImpl::internalSharedInstance();
}

std::shared_ptr<ApplicationCoreImpl> ApplicationCoreImpl::internalSharedInstance()
{
    if (instance == nullptr)
    {
        instance = std::make_shared<ApplicationCoreImpl>();
    }

    return instance;
}

double ApplicationCoreImpl::multiply(double value1, double value2)
{
    return (value1 * value2);
}

std::string ApplicationCoreImpl::getVersion()
{
#ifdef NATIVIUM_CONFIG_VERSION
#define NATIVIUM_CONFIG_VERSION_STR NATIVIUM_CONFIG_VERSION
#else
#define NATIVIUM_CONFIG_VERSION_STR "1.0.0"
#endif

    return NATIVIUM_CONFIG_VERSION_STR;
}

} // namespace core
} // namespace nativium
