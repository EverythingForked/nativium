// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from proj.djinni

#include "com/nativium/net/http/NTVHttpRequestParam.hpp" // my header
#include "djinni/jni/Marshal.hpp"

namespace djinni_generated
{

NTVHttpRequestParam::NTVHttpRequestParam() = default;

NTVHttpRequestParam::~NTVHttpRequestParam() = default;

auto NTVHttpRequestParam::fromCpp(JNIEnv *jniEnv, const CppType &c) -> ::djinni::LocalRef<JniType>
{
    const auto &data = ::djinni::JniClass<NTVHttpRequestParam>::get();
    auto r = ::djinni::LocalRef<JniType>{jniEnv->NewObject(data.clazz.get(), data.jconstructor,
                                                           ::djinni::get(::djinni::String::fromCpp(jniEnv, c.name)),
                                                           ::djinni::get(::djinni::String::fromCpp(jniEnv, c.value)))};
    ::djinni::jniExceptionCheck(jniEnv);
    return r;
}

auto NTVHttpRequestParam::toCpp(JNIEnv *jniEnv, JniType j) -> CppType
{
    ::djinni::JniLocalScope jscope(jniEnv, 3);
    assert(j != nullptr);
    const auto &data = ::djinni::JniClass<NTVHttpRequestParam>::get();
    return {::djinni::String::toCpp(jniEnv, (jstring)jniEnv->GetObjectField(j, data.field_mName)),
            ::djinni::String::toCpp(jniEnv, (jstring)jniEnv->GetObjectField(j, data.field_mValue))};
}

} // namespace djinni_generated
