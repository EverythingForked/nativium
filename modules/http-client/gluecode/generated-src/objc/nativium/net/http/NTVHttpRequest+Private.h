// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from proj.djinni

#include "nativium/net/http/HttpRequest.hpp"
#import "nativium/net/http/NTVHttpRequest.h"

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@class NTVHttpRequest;

namespace djinni_generated
{

struct HttpRequest
{
    using CppType = ::nativium::net::http::HttpRequest;
    using ObjcType = ::NTVHttpRequest *;

    using Boxed = HttpRequest;

    static CppType toCpp(ObjcType objc);
    static ObjcType fromCpp(const CppType &cpp);
};

} // namespace djinni_generated
