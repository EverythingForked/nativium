// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from proj.djinni

#include "com/nativium/helper/NTVHelperSecurityHelper.hpp" // my header
#include "djinni/jni/Marshal.hpp"

namespace djinni_generated
{

NTVHelperSecurityHelper::NTVHelperSecurityHelper() : ::djinni::JniInterface<::nativium::helper::SecurityHelper, NTVHelperSecurityHelper>("com/nativium/helper/SecurityHelper$CppProxy") {}

NTVHelperSecurityHelper::~NTVHelperSecurityHelper() = default;

CJNIEXPORT void JNICALL Java_com_nativium_helper_SecurityHelper_00024CppProxy_nativeDestroy(JNIEnv *jniEnv, jobject /*this*/, jlong nativeRef)
{
    try
    {
        DJINNI_FUNCTION_PROLOGUE1(jniEnv, nativeRef);
        delete reinterpret_cast<::djinni::CppProxyHandle<::nativium::helper::SecurityHelper> *>(nativeRef);
    }
    JNI_TRANSLATE_EXCEPTIONS_RETURN(jniEnv, )
}

CJNIEXPORT jstring JNICALL Java_com_nativium_helper_SecurityHelper_00024CppProxy_generateUuidV4(JNIEnv *jniEnv, jobject /*this*/)
{
    try
    {
        DJINNI_FUNCTION_PROLOGUE0(jniEnv);
        auto r = ::nativium::helper::SecurityHelper::generateUuidV4();
        return ::djinni::release(::djinni::String::fromCpp(jniEnv, r));
    }
    JNI_TRANSLATE_EXCEPTIONS_RETURN(jniEnv, 0 /* value doesn't matter */)
}

} // namespace djinni_generated
