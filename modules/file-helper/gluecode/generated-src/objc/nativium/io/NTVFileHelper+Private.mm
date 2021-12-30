// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from proj.djinni

#import "djinni/objc/DJICppWrapperCache+Private.h"
#import "djinni/objc/DJIError.h"
#import "djinni/objc/DJIMarshal+Private.h"
#import "nativium/io/NTVFileHelper+Private.h"
#import "nativium/io/NTVFileHelper.h"
#import "nativium/io/NTVFileHelperPlatformService+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface NTVFileHelper ()

- (id)initWithCpp:(const std::shared_ptr<::nativium::io::FileHelper> &)cppRef;

@end

@implementation NTVFileHelper
{
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::nativium::io::FileHelper>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::nativium::io::FileHelper> &)cppRef
{
    if (self = [super init])
    {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

+ (nullable NTVFileHelper *)shared
{
    try
    {
        auto objcpp_result_ = ::nativium::io::FileHelper::shared();
        return ::djinni_generated::FileHelper::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)setPlatformService:(nullable id<NTVFileHelperPlatformService>)ps
{
    try
    {
        _cppRefHandle.get()->setPlatformService(::djinni_generated::FileHelperPlatformService::toCpp(ps));
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable id<NTVFileHelperPlatformService>)getPlatformService
{
    try
    {
        auto objcpp_result_ = _cppRefHandle.get()->getPlatformService();
        return ::djinni_generated::FileHelperPlatformService::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

- (BOOL)hasPlatformService
{
    try
    {
        auto objcpp_result_ = _cppRefHandle.get()->hasPlatformService();
        return ::djinni::Bool::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (BOOL)createFile:(nonnull NSString *)path
{
    try
    {
        auto objcpp_result_ = ::nativium::io::FileHelper::createFile(::djinni::String::toCpp(path));
        return ::djinni::Bool::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (BOOL)createFileWithStringContent:(nonnull NSString *)path
                            content:(nonnull NSString *)content
{
    try
    {
        auto objcpp_result_ = ::nativium::io::FileHelper::createFileWithStringContent(::djinni::String::toCpp(path),
                                                                                      ::djinni::String::toCpp(content));
        return ::djinni::Bool::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (BOOL)createFileWithBinaryContent:(nonnull NSString *)path
                            content:(nonnull NSData *)content
{
    try
    {
        auto objcpp_result_ = ::nativium::io::FileHelper::createFileWithBinaryContent(::djinni::String::toCpp(path),
                                                                                      ::djinni::Binary::toCpp(content));
        return ::djinni::Bool::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (BOOL)createDir:(nonnull NSString *)path
{
    try
    {
        auto objcpp_result_ = ::nativium::io::FileHelper::createDir(::djinni::String::toCpp(path));
        return ::djinni::Bool::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nonnull NSArray<NSString *> *)listFiles:(nonnull NSString *)path
{
    try
    {
        auto objcpp_result_ = ::nativium::io::FileHelper::listFiles(::djinni::String::toCpp(path));
        return ::djinni::List<::djinni::String>::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nonnull NSString *)getExtension:(nonnull NSString *)path
{
    try
    {
        auto objcpp_result_ = ::nativium::io::FileHelper::getExtension(::djinni::String::toCpp(path));
        return ::djinni::String::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nonnull NSString *)getFilename:(nonnull NSString *)path
{
    try
    {
        auto objcpp_result_ = ::nativium::io::FileHelper::getFilename(::djinni::String::toCpp(path));
        return ::djinni::String::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nonnull NSString *)getBasename:(nonnull NSString *)path
{
    try
    {
        auto objcpp_result_ = ::nativium::io::FileHelper::getBasename(::djinni::String::toCpp(path));
        return ::djinni::String::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nonnull NSString *)getFilenameFromUrl:(nonnull NSString *)url
{
    try
    {
        auto objcpp_result_ = ::nativium::io::FileHelper::getFilenameFromUrl(::djinni::String::toCpp(url));
        return ::djinni::String::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nonnull NSString *)getBasenameFromUrl:(nonnull NSString *)url
{
    try
    {
        auto objcpp_result_ = ::nativium::io::FileHelper::getBasenameFromUrl(::djinni::String::toCpp(url));
        return ::djinni::String::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (BOOL)removeFile:(nonnull NSString *)path
{
    try
    {
        auto objcpp_result_ = ::nativium::io::FileHelper::removeFile(::djinni::String::toCpp(path));
        return ::djinni::Bool::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (BOOL)removeDir:(nonnull NSString *)path
{
    try
    {
        auto objcpp_result_ = ::nativium::io::FileHelper::removeDir(::djinni::String::toCpp(path));
        return ::djinni::Bool::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (BOOL)isDir:(nonnull NSString *)path
{
    try
    {
        auto objcpp_result_ = ::nativium::io::FileHelper::isDir(::djinni::String::toCpp(path));
        return ::djinni::Bool::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (BOOL)isFile:(nonnull NSString *)path
{
    try
    {
        auto objcpp_result_ = ::nativium::io::FileHelper::isFile(::djinni::String::toCpp(path));
        return ::djinni::Bool::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (int64_t)getFileSize:(nonnull NSString *)path
{
    try
    {
        auto objcpp_result_ = ::nativium::io::FileHelper::getFileSize(::djinni::String::toCpp(path));
        return ::djinni::I64::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (BOOL)copyFile:(nonnull NSString *)from
              to:(nonnull NSString *)to
{
    try
    {
        auto objcpp_result_ = ::nativium::io::FileHelper::copyFile(::djinni::String::toCpp(from),
                                                                   ::djinni::String::toCpp(to));
        return ::djinni::Bool::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (BOOL)moveFile:(nonnull NSString *)from
              to:(nonnull NSString *)to
{
    try
    {
        auto objcpp_result_ = ::nativium::io::FileHelper::moveFile(::djinni::String::toCpp(from),
                                                                   ::djinni::String::toCpp(to));
        return ::djinni::Bool::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nonnull NSString *)join:(nonnull NSString *)first
                    second:(nonnull NSString *)second
{
    try
    {
        auto objcpp_result_ = ::nativium::io::FileHelper::join(::djinni::String::toCpp(first),
                                                               ::djinni::String::toCpp(second));
        return ::djinni::String::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nonnull NSString *)getFileContentAsString:(nonnull NSString *)path
{
    try
    {
        auto objcpp_result_ = ::nativium::io::FileHelper::getFileContentAsString(::djinni::String::toCpp(path));
        return ::djinni::String::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nonnull NSData *)getFileContentAsBinary:(nonnull NSString *)path
{
    try
    {
        auto objcpp_result_ = ::nativium::io::FileHelper::getFileContentAsBinary(::djinni::String::toCpp(path));
        return ::djinni::Binary::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nonnull NSString *)getHomeDir
{
    try
    {
        auto objcpp_result_ = ::nativium::io::FileHelper::getHomeDir();
        return ::djinni::String::fromCpp(objcpp_result_);
    }
    DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated
{

auto FileHelper::toCpp(ObjcType objc) -> CppType
{
    if (!objc)
    {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto FileHelper::fromCppOpt(const CppOptType &cpp) -> ObjcType
{
    if (!cpp)
    {
        return nil;
    }
    return ::djinni::get_cpp_proxy<::NTVFileHelper>(cpp);
}

} // namespace djinni_generated

@end
