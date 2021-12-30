// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from proj.djinni

#import "djinni/objc/DJICppWrapperCache+Private.h"
#import "djinni/objc/DJIError.h"
#import "nativium/domain/NTVDomainTodo+Private.h"
#import "nativium/helper/NTVHelperTodoHelper+Private.h"
#import "nativium/helper/NTVHelperTodoHelper.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface NTVHelperTodoHelper ()

- (id)initWithCpp:(const std::shared_ptr<::nativium::helper::TodoHelper> &)cppRef;

@end

@implementation NTVHelperTodoHelper
{
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::nativium::helper::TodoHelper>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::nativium::helper::TodoHelper> &)cppRef
{
    if (self = [super init])
    {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

+ (nonnull NTVDomainTodo *)create
{
    try
    {
        auto objcpp_result_ = ::nativium::helper::TodoHelper::create();
        return ::djinni_generated::Todo::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated
{

auto TodoHelper::toCpp(ObjcType objc) -> CppType
{
    if (!objc)
    {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto TodoHelper::fromCppOpt(const CppOptType &cpp) -> ObjcType
{
    if (!cpp)
    {
        return nil;
    }
    return ::djinni::get_cpp_proxy<::NTVHelperTodoHelper>(cpp);
}

} // namespace djinni_generated

@end