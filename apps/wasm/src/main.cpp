#include "nativium/core/ApplicationCore.hpp"

#include <emscripten/emscripten.h>
#include <iostream>

using namespace nativium::core;

#ifdef __cplusplus
extern "C"
{
#endif

    EMSCRIPTEN_KEEPALIVE const char *Nativium_Core_Version()
    {
        const char *result;
        result = ApplicationCore::shared()->getVersion().c_str();
        return result;
    }

    EMSCRIPTEN_KEEPALIVE double Nativium_Core_Multiply(double value1, double value2)
    {
        return ApplicationCore::shared()->multiply(value1, value2);
    }

#ifdef __cplusplus
}
#endif

int main(int argc, char **argv)
{
    // version
    {
        std::cout << "Module Version: " << ApplicationCore::shared()->getVersion() << std::endl;
    }

    return EXIT_SUCCESS;
}
