// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from proj.djinni

#import "djinni/objc/DJICppWrapperCache+Private.h"
#import "djinni/objc/DJIError.h"
#import "djinni/objc/DJIObjcWrapperCache+Private.h"
#import "nativium/net/http/NTVHttpClientPlatformService+Private.h"
#import "nativium/net/http/NTVHttpClientPlatformService.h"
#import "nativium/net/http/NTVHttpRequest+Private.h"
#import "nativium/net/http/NTVHttpResponse+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface NTVHttpClientPlatformServiceCppProxy : NSObject <NTVHttpClientPlatformService>

- (id)initWithCpp:(const std::shared_ptr<::nativium::net::http::HttpClientPlatformService> &)cppRef;

@end

@implementation NTVHttpClientPlatformServiceCppProxy
{
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::nativium::net::http::HttpClientPlatformService>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::nativium::net::http::HttpClientPlatformService> &)cppRef
{
    if (self = [super init])
    {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (nonnull NTVHttpResponse *)doRequest:(nonnull NTVHttpRequest *)request
{
    try
    {
        auto objcpp_result_ = _cppRefHandle.get()->doRequest(::djinni_generated::HttpRequest::toCpp(request));
        return ::djinni_generated::HttpResponse::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated
{

class HttpClientPlatformService::ObjcProxy final
    : public ::nativium::net::http::HttpClientPlatformService,
      private ::djinni::ObjcProxyBase<ObjcType>
{
    friend class ::djinni_generated::HttpClientPlatformService;

public:
    using ObjcProxyBase::ObjcProxyBase;
    ::nativium::net::http::HttpResponse doRequest(const ::nativium::net::http::HttpRequest &c_request) override
    {
        @autoreleasepool
        {
            auto objcpp_result_ = [djinni_private_get_proxied_objc_object() doRequest:(::djinni_generated::HttpRequest::fromCpp(c_request))];
            return ::djinni_generated::HttpResponse::toCpp(objcpp_result_);
        }
    }
};

} // namespace djinni_generated

namespace djinni_generated
{

auto HttpClientPlatformService::toCpp(ObjcType objc) -> CppType
{
    if (!objc)
    {
        return nullptr;
    }
    if ([(id)objc isKindOfClass:[NTVHttpClientPlatformServiceCppProxy class]])
    {
        return ((NTVHttpClientPlatformServiceCppProxy *)objc)->_cppRefHandle.get();
    }
    return ::djinni::get_objc_proxy<ObjcProxy>(objc);
}

auto HttpClientPlatformService::fromCppOpt(const CppOptType &cpp) -> ObjcType
{
    if (!cpp)
    {
        return nil;
    }
    if (auto cppPtr = dynamic_cast<ObjcProxy *>(cpp.get()))
    {
        return cppPtr->djinni_private_get_proxied_objc_object();
    }
    return ::djinni::get_cpp_proxy<::NTVHttpClientPlatformServiceCppProxy>(cpp);
}

} // namespace djinni_generated

@end
