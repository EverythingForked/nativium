// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from proj.djinni

#import "djinni/objc/DJICppWrapperCache+Private.h"
#import "djinni/objc/DJIError.h"
#import "djinni/objc/DJIMarshal+Private.h"
#import "nativium/time/NTVDateTime+Private.h"
#import "nativium/time/NTVDateTime.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface NTVDateTime ()

- (id)initWithCpp:(const std::shared_ptr<::nativium::time::DateTime> &)cppRef;

@end

@implementation NTVDateTime
{
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::nativium::time::DateTime>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::nativium::time::DateTime> &)cppRef
{
    if (self = [super init])
    {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

+ (nonnull NSDate *)getDateTimeFromString:(nonnull NSString *)value
{
    try
    {
        auto objcpp_result_ = ::nativium::time::DateTime::getDateTimeFromString(::djinni::String::toCpp(value));
        return ::djinni::Date::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nonnull NSString *)getStringFromDateTime:(nonnull NSDate *)value
{
    try
    {
        auto objcpp_result_ = ::nativium::time::DateTime::getStringFromDateTime(::djinni::Date::toCpp(value));
        return ::djinni::String::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nonnull NSString *)getCurrentDateTimeAsString
{
    try
    {
        auto objcpp_result_ = ::nativium::time::DateTime::getCurrentDateTimeAsString();
        return ::djinni::String::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nonnull NSDate *)getCurrentDateTime
{
    try
    {
        auto objcpp_result_ = ::nativium::time::DateTime::getCurrentDateTime();
        return ::djinni::Date::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nonnull NSDate *)getDateTimeFromSeconds:(int64_t)value
{
    try
    {
        auto objcpp_result_ = ::nativium::time::DateTime::getDateTimeFromSeconds(::djinni::I64::toCpp(value));
        return ::djinni::Date::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nonnull NSDate *)getDateTimeFromMilliseconds:(int64_t)value
{
    try
    {
        auto objcpp_result_ = ::nativium::time::DateTime::getDateTimeFromMilliseconds(::djinni::I64::toCpp(value));
        return ::djinni::Date::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (int64_t)getTimestampInMillisecondsFromDateTime:(nonnull NSDate *)value
{
    try
    {
        auto objcpp_result_ = ::nativium::time::DateTime::getTimestampInMillisecondsFromDateTime(::djinni::Date::toCpp(value));
        return ::djinni::I64::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (int64_t)getTimestampInSecondsFromDateTime:(nonnull NSDate *)value
{
    try
    {
        auto objcpp_result_ = ::nativium::time::DateTime::getTimestampInSecondsFromDateTime(::djinni::Date::toCpp(value));
        return ::djinni::I64::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nonnull NSString *)getCurrentTimestampInSecondsAsString
{
    try
    {
        auto objcpp_result_ = ::nativium::time::DateTime::getCurrentTimestampInSecondsAsString();
        return ::djinni::String::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (int64_t)getCurrentTimestampInSeconds
{
    try
    {
        auto objcpp_result_ = ::nativium::time::DateTime::getCurrentTimestampInSeconds();
        return ::djinni::I64::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nonnull NSString *)getCurrentTimestampInMillisecondsAsString
{
    try
    {
        auto objcpp_result_ = ::nativium::time::DateTime::getCurrentTimestampInMillisecondsAsString();
        return ::djinni::String::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (int64_t)getCurrentTimestampInMilliseconds
{
    try
    {
        auto objcpp_result_ = ::nativium::time::DateTime::getCurrentTimestampInMilliseconds();
        return ::djinni::I64::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated
{

auto DateTime::toCpp(ObjcType objc) -> CppType
{
    if (!objc)
    {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto DateTime::fromCppOpt(const CppOptType &cpp) -> ObjcType
{
    if (!cpp)
    {
        return nil;
    }
    return ::djinni::get_cpp_proxy<::NTVDateTime>(cpp);
}

} // namespace djinni_generated

@end
