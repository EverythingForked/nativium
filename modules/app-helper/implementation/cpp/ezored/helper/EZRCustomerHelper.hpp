#pragma once

#include "nativium/domain/Customer.hpp"
#include "nativium/helper/CustomerHelper.hpp"
#include "nativium/net/http/HttpResponse.hpp"
#include "rapidjson/document.h"

#include <string>

namespace nativium
{
namespace helper
{

using namespace domain;
using namespace nativium::net::http;

class EZRCustomerHelper : public CustomerHelper
{
public:
    virtual ~EZRCustomerHelper() {}

    static Customer fromJson(const rapidjson::Value &json);
    static std::string toJson(const Customer &customer);
    static Customer fromHttpResponse(const HttpResponse httpResponse);
};

} // namespace helper
} // namespace nativium
