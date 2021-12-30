// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from proj.djinni

#include "com/nativium/io/NTVFileHelper.hpp" // my header
#include "com/nativium/io/NTVFileHelperPlatformService.hpp"
#include "djinni/jni/Marshal.hpp"

namespace djinni_generated
{

NTVFileHelper::NTVFileHelper() : ::djinni::JniInterface<::nativium::io::FileHelper, NTVFileHelper>("com/nativium/io/FileHelper$CppProxy") {}

NTVFileHelper::~NTVFileHelper() = default;

CJNIEXPORT void JNICALL Java_com_nativium_io_FileHelper_00024CppProxy_nativeDestroy(JNIEnv *jniEnv, jobject /*this*/, jlong nativeRef)
{
    try
    {
        DJINNI_FUNCTION_PROLOGUE1(jniEnv, nativeRef);
        delete reinterpret_cast<::djinni::CppProxyHandle<::nativium::io::FileHelper> *>(nativeRef);
    }
    JNI_TRANSLATE_EXCEPTIONS_RETURN(jniEnv, )
}

CJNIEXPORT jobject JNICALL Java_com_nativium_io_FileHelper_00024CppProxy_shared(JNIEnv *jniEnv, jobject /*this*/)
{
    try
    {
        DJINNI_FUNCTION_PROLOGUE0(jniEnv);
        auto r = ::nativium::io::FileHelper::shared();
        return ::djinni::release(::djinni_generated::NTVFileHelper::fromCpp(jniEnv, r));
    }
    JNI_TRANSLATE_EXCEPTIONS_RETURN(jniEnv, 0 /* value doesn't matter */)
}

CJNIEXPORT void JNICALL Java_com_nativium_io_FileHelper_00024CppProxy_native_1setPlatformService(JNIEnv *jniEnv, jobject /*this*/, jlong nativeRef, jobject j_ps)
{
    try
    {
        DJINNI_FUNCTION_PROLOGUE1(jniEnv, nativeRef);
        const auto &ref = ::djinni::objectFromHandleAddress<::nativium::io::FileHelper>(nativeRef);
        ref->setPlatformService(::djinni_generated::NTVFileHelperPlatformService::toCpp(jniEnv, j_ps));
    }
    JNI_TRANSLATE_EXCEPTIONS_RETURN(jniEnv, )
}

CJNIEXPORT jobject JNICALL Java_com_nativium_io_FileHelper_00024CppProxy_native_1getPlatformService(JNIEnv *jniEnv, jobject /*this*/, jlong nativeRef)
{
    try
    {
        DJINNI_FUNCTION_PROLOGUE1(jniEnv, nativeRef);
        const auto &ref = ::djinni::objectFromHandleAddress<::nativium::io::FileHelper>(nativeRef);
        auto r = ref->getPlatformService();
        return ::djinni::release(::djinni_generated::NTVFileHelperPlatformService::fromCpp(jniEnv, r));
    }
    JNI_TRANSLATE_EXCEPTIONS_RETURN(jniEnv, 0 /* value doesn't matter */)
}

CJNIEXPORT jboolean JNICALL Java_com_nativium_io_FileHelper_00024CppProxy_native_1hasPlatformService(JNIEnv *jniEnv, jobject /*this*/, jlong nativeRef)
{
    try
    {
        DJINNI_FUNCTION_PROLOGUE1(jniEnv, nativeRef);
        const auto &ref = ::djinni::objectFromHandleAddress<::nativium::io::FileHelper>(nativeRef);
        auto r = ref->hasPlatformService();
        return ::djinni::release(::djinni::Bool::fromCpp(jniEnv, r));
    }
    JNI_TRANSLATE_EXCEPTIONS_RETURN(jniEnv, 0 /* value doesn't matter */)
}

CJNIEXPORT jboolean JNICALL Java_com_nativium_io_FileHelper_00024CppProxy_createFile(JNIEnv *jniEnv, jobject /*this*/, jstring j_path)
{
    try
    {
        DJINNI_FUNCTION_PROLOGUE0(jniEnv);
        auto r = ::nativium::io::FileHelper::createFile(::djinni::String::toCpp(jniEnv, j_path));
        return ::djinni::release(::djinni::Bool::fromCpp(jniEnv, r));
    }
    JNI_TRANSLATE_EXCEPTIONS_RETURN(jniEnv, 0 /* value doesn't matter */)
}

CJNIEXPORT jboolean JNICALL Java_com_nativium_io_FileHelper_00024CppProxy_createFileWithStringContent(JNIEnv *jniEnv, jobject /*this*/, jstring j_path, jstring j_content)
{
    try
    {
        DJINNI_FUNCTION_PROLOGUE0(jniEnv);
        auto r = ::nativium::io::FileHelper::createFileWithStringContent(::djinni::String::toCpp(jniEnv, j_path),
                                                                         ::djinni::String::toCpp(jniEnv, j_content));
        return ::djinni::release(::djinni::Bool::fromCpp(jniEnv, r));
    }
    JNI_TRANSLATE_EXCEPTIONS_RETURN(jniEnv, 0 /* value doesn't matter */)
}

CJNIEXPORT jboolean JNICALL Java_com_nativium_io_FileHelper_00024CppProxy_createFileWithBinaryContent(JNIEnv *jniEnv, jobject /*this*/, jstring j_path, jbyteArray j_content)
{
    try
    {
        DJINNI_FUNCTION_PROLOGUE0(jniEnv);
        auto r = ::nativium::io::FileHelper::createFileWithBinaryContent(::djinni::String::toCpp(jniEnv, j_path),
                                                                         ::djinni::Binary::toCpp(jniEnv, j_content));
        return ::djinni::release(::djinni::Bool::fromCpp(jniEnv, r));
    }
    JNI_TRANSLATE_EXCEPTIONS_RETURN(jniEnv, 0 /* value doesn't matter */)
}

CJNIEXPORT jboolean JNICALL Java_com_nativium_io_FileHelper_00024CppProxy_createDir(JNIEnv *jniEnv, jobject /*this*/, jstring j_path)
{
    try
    {
        DJINNI_FUNCTION_PROLOGUE0(jniEnv);
        auto r = ::nativium::io::FileHelper::createDir(::djinni::String::toCpp(jniEnv, j_path));
        return ::djinni::release(::djinni::Bool::fromCpp(jniEnv, r));
    }
    JNI_TRANSLATE_EXCEPTIONS_RETURN(jniEnv, 0 /* value doesn't matter */)
}

CJNIEXPORT jobject JNICALL Java_com_nativium_io_FileHelper_00024CppProxy_listFiles(JNIEnv *jniEnv, jobject /*this*/, jstring j_path)
{
    try
    {
        DJINNI_FUNCTION_PROLOGUE0(jniEnv);
        auto r = ::nativium::io::FileHelper::listFiles(::djinni::String::toCpp(jniEnv, j_path));
        return ::djinni::release(::djinni::List<::djinni::String>::fromCpp(jniEnv, r));
    }
    JNI_TRANSLATE_EXCEPTIONS_RETURN(jniEnv, 0 /* value doesn't matter */)
}

CJNIEXPORT jstring JNICALL Java_com_nativium_io_FileHelper_00024CppProxy_getExtension(JNIEnv *jniEnv, jobject /*this*/, jstring j_path)
{
    try
    {
        DJINNI_FUNCTION_PROLOGUE0(jniEnv);
        auto r = ::nativium::io::FileHelper::getExtension(::djinni::String::toCpp(jniEnv, j_path));
        return ::djinni::release(::djinni::String::fromCpp(jniEnv, r));
    }
    JNI_TRANSLATE_EXCEPTIONS_RETURN(jniEnv, 0 /* value doesn't matter */)
}

CJNIEXPORT jstring JNICALL Java_com_nativium_io_FileHelper_00024CppProxy_getFilename(JNIEnv *jniEnv, jobject /*this*/, jstring j_path)
{
    try
    {
        DJINNI_FUNCTION_PROLOGUE0(jniEnv);
        auto r = ::nativium::io::FileHelper::getFilename(::djinni::String::toCpp(jniEnv, j_path));
        return ::djinni::release(::djinni::String::fromCpp(jniEnv, r));
    }
    JNI_TRANSLATE_EXCEPTIONS_RETURN(jniEnv, 0 /* value doesn't matter */)
}

CJNIEXPORT jstring JNICALL Java_com_nativium_io_FileHelper_00024CppProxy_getBasename(JNIEnv *jniEnv, jobject /*this*/, jstring j_path)
{
    try
    {
        DJINNI_FUNCTION_PROLOGUE0(jniEnv);
        auto r = ::nativium::io::FileHelper::getBasename(::djinni::String::toCpp(jniEnv, j_path));
        return ::djinni::release(::djinni::String::fromCpp(jniEnv, r));
    }
    JNI_TRANSLATE_EXCEPTIONS_RETURN(jniEnv, 0 /* value doesn't matter */)
}

CJNIEXPORT jstring JNICALL Java_com_nativium_io_FileHelper_00024CppProxy_getFilenameFromUrl(JNIEnv *jniEnv, jobject /*this*/, jstring j_url)
{
    try
    {
        DJINNI_FUNCTION_PROLOGUE0(jniEnv);
        auto r = ::nativium::io::FileHelper::getFilenameFromUrl(::djinni::String::toCpp(jniEnv, j_url));
        return ::djinni::release(::djinni::String::fromCpp(jniEnv, r));
    }
    JNI_TRANSLATE_EXCEPTIONS_RETURN(jniEnv, 0 /* value doesn't matter */)
}

CJNIEXPORT jstring JNICALL Java_com_nativium_io_FileHelper_00024CppProxy_getBasenameFromUrl(JNIEnv *jniEnv, jobject /*this*/, jstring j_url)
{
    try
    {
        DJINNI_FUNCTION_PROLOGUE0(jniEnv);
        auto r = ::nativium::io::FileHelper::getBasenameFromUrl(::djinni::String::toCpp(jniEnv, j_url));
        return ::djinni::release(::djinni::String::fromCpp(jniEnv, r));
    }
    JNI_TRANSLATE_EXCEPTIONS_RETURN(jniEnv, 0 /* value doesn't matter */)
}

CJNIEXPORT jboolean JNICALL Java_com_nativium_io_FileHelper_00024CppProxy_removeFile(JNIEnv *jniEnv, jobject /*this*/, jstring j_path)
{
    try
    {
        DJINNI_FUNCTION_PROLOGUE0(jniEnv);
        auto r = ::nativium::io::FileHelper::removeFile(::djinni::String::toCpp(jniEnv, j_path));
        return ::djinni::release(::djinni::Bool::fromCpp(jniEnv, r));
    }
    JNI_TRANSLATE_EXCEPTIONS_RETURN(jniEnv, 0 /* value doesn't matter */)
}

CJNIEXPORT jboolean JNICALL Java_com_nativium_io_FileHelper_00024CppProxy_removeDir(JNIEnv *jniEnv, jobject /*this*/, jstring j_path)
{
    try
    {
        DJINNI_FUNCTION_PROLOGUE0(jniEnv);
        auto r = ::nativium::io::FileHelper::removeDir(::djinni::String::toCpp(jniEnv, j_path));
        return ::djinni::release(::djinni::Bool::fromCpp(jniEnv, r));
    }
    JNI_TRANSLATE_EXCEPTIONS_RETURN(jniEnv, 0 /* value doesn't matter */)
}

CJNIEXPORT jboolean JNICALL Java_com_nativium_io_FileHelper_00024CppProxy_isDir(JNIEnv *jniEnv, jobject /*this*/, jstring j_path)
{
    try
    {
        DJINNI_FUNCTION_PROLOGUE0(jniEnv);
        auto r = ::nativium::io::FileHelper::isDir(::djinni::String::toCpp(jniEnv, j_path));
        return ::djinni::release(::djinni::Bool::fromCpp(jniEnv, r));
    }
    JNI_TRANSLATE_EXCEPTIONS_RETURN(jniEnv, 0 /* value doesn't matter */)
}

CJNIEXPORT jboolean JNICALL Java_com_nativium_io_FileHelper_00024CppProxy_isFile(JNIEnv *jniEnv, jobject /*this*/, jstring j_path)
{
    try
    {
        DJINNI_FUNCTION_PROLOGUE0(jniEnv);
        auto r = ::nativium::io::FileHelper::isFile(::djinni::String::toCpp(jniEnv, j_path));
        return ::djinni::release(::djinni::Bool::fromCpp(jniEnv, r));
    }
    JNI_TRANSLATE_EXCEPTIONS_RETURN(jniEnv, 0 /* value doesn't matter */)
}

CJNIEXPORT jlong JNICALL Java_com_nativium_io_FileHelper_00024CppProxy_getFileSize(JNIEnv *jniEnv, jobject /*this*/, jstring j_path)
{
    try
    {
        DJINNI_FUNCTION_PROLOGUE0(jniEnv);
        auto r = ::nativium::io::FileHelper::getFileSize(::djinni::String::toCpp(jniEnv, j_path));
        return ::djinni::release(::djinni::I64::fromCpp(jniEnv, r));
    }
    JNI_TRANSLATE_EXCEPTIONS_RETURN(jniEnv, 0 /* value doesn't matter */)
}

CJNIEXPORT jboolean JNICALL Java_com_nativium_io_FileHelper_00024CppProxy_copyFile(JNIEnv *jniEnv, jobject /*this*/, jstring j_from, jstring j_to)
{
    try
    {
        DJINNI_FUNCTION_PROLOGUE0(jniEnv);
        auto r = ::nativium::io::FileHelper::copyFile(::djinni::String::toCpp(jniEnv, j_from),
                                                      ::djinni::String::toCpp(jniEnv, j_to));
        return ::djinni::release(::djinni::Bool::fromCpp(jniEnv, r));
    }
    JNI_TRANSLATE_EXCEPTIONS_RETURN(jniEnv, 0 /* value doesn't matter */)
}

CJNIEXPORT jboolean JNICALL Java_com_nativium_io_FileHelper_00024CppProxy_moveFile(JNIEnv *jniEnv, jobject /*this*/, jstring j_from, jstring j_to)
{
    try
    {
        DJINNI_FUNCTION_PROLOGUE0(jniEnv);
        auto r = ::nativium::io::FileHelper::moveFile(::djinni::String::toCpp(jniEnv, j_from),
                                                      ::djinni::String::toCpp(jniEnv, j_to));
        return ::djinni::release(::djinni::Bool::fromCpp(jniEnv, r));
    }
    JNI_TRANSLATE_EXCEPTIONS_RETURN(jniEnv, 0 /* value doesn't matter */)
}

CJNIEXPORT jstring JNICALL Java_com_nativium_io_FileHelper_00024CppProxy_join(JNIEnv *jniEnv, jobject /*this*/, jstring j_first, jstring j_second)
{
    try
    {
        DJINNI_FUNCTION_PROLOGUE0(jniEnv);
        auto r = ::nativium::io::FileHelper::join(::djinni::String::toCpp(jniEnv, j_first),
                                                  ::djinni::String::toCpp(jniEnv, j_second));
        return ::djinni::release(::djinni::String::fromCpp(jniEnv, r));
    }
    JNI_TRANSLATE_EXCEPTIONS_RETURN(jniEnv, 0 /* value doesn't matter */)
}

CJNIEXPORT jstring JNICALL Java_com_nativium_io_FileHelper_00024CppProxy_getFileContentAsString(JNIEnv *jniEnv, jobject /*this*/, jstring j_path)
{
    try
    {
        DJINNI_FUNCTION_PROLOGUE0(jniEnv);
        auto r = ::nativium::io::FileHelper::getFileContentAsString(::djinni::String::toCpp(jniEnv, j_path));
        return ::djinni::release(::djinni::String::fromCpp(jniEnv, r));
    }
    JNI_TRANSLATE_EXCEPTIONS_RETURN(jniEnv, 0 /* value doesn't matter */)
}

CJNIEXPORT jbyteArray JNICALL Java_com_nativium_io_FileHelper_00024CppProxy_getFileContentAsBinary(JNIEnv *jniEnv, jobject /*this*/, jstring j_path)
{
    try
    {
        DJINNI_FUNCTION_PROLOGUE0(jniEnv);
        auto r = ::nativium::io::FileHelper::getFileContentAsBinary(::djinni::String::toCpp(jniEnv, j_path));
        return ::djinni::release(::djinni::Binary::fromCpp(jniEnv, r));
    }
    JNI_TRANSLATE_EXCEPTIONS_RETURN(jniEnv, 0 /* value doesn't matter */)
}

CJNIEXPORT jstring JNICALL Java_com_nativium_io_FileHelper_00024CppProxy_getHomeDir(JNIEnv *jniEnv, jobject /*this*/)
{
    try
    {
        DJINNI_FUNCTION_PROLOGUE0(jniEnv);
        auto r = ::nativium::io::FileHelper::getHomeDir();
        return ::djinni::release(::djinni::String::fromCpp(jniEnv, r));
    }
    JNI_TRANSLATE_EXCEPTIONS_RETURN(jniEnv, 0 /* value doesn't matter */)
}

} // namespace djinni_generated
