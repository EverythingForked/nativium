// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from proj.djinni

#pragma once

#include "nativium/enumerator/CustomerStatusEnum.hpp"
#include <cstdint>
#include <string>
#include <utility>

namespace nativium
{
namespace domain
{

struct Customer final
{
    int64_t id;
    std::string name;
    std::string token;
    ::nativium::enumerator::CustomerStatusEnum status;

    Customer(int64_t id_,
             std::string name_,
             std::string token_,
             ::nativium::enumerator::CustomerStatusEnum status_)
        : id(std::move(id_)), name(std::move(name_)), token(std::move(token_)), status(std::move(status_))
    {
    }

    Customer()
        : id(), name(), token(), status()
    {
    }
};

} // namespace domain
} // namespace nativium