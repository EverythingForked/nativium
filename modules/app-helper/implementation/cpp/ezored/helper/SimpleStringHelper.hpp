#pragma once

#include <string>

namespace nativium
{
namespace helper
{

class SimpleStringHelper
{
public:
    virtual ~SimpleStringHelper() {}
    static std::string format(const std::string fmtStr, ...);
};

} // namespace helper
} // namespace nativium
