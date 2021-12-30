// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from proj.djinni

#pragma once

#include "djinni/jni/djinni_support.hpp"
#include "nativium/net/http/HttpResponse.hpp"

namespace djinni_generated
{

class NTVHttpResponse final
{
public:
    using CppType = ::nativium::net::http::HttpResponse;
    using JniType = jobject;

    using Boxed = NTVHttpResponse;

    ~NTVHttpResponse();

    static CppType toCpp(JNIEnv *jniEnv, JniType j);
    static ::djinni::LocalRef<JniType> fromCpp(JNIEnv *jniEnv, const CppType &c);

private:
    NTVHttpResponse();
    friend ::djinni::JniClass<NTVHttpResponse>;

    const ::djinni::GlobalRef<jclass> clazz{::djinni::jniFindClass("com/nativium/net/http/HttpResponse")};
    const jmethodID jconstructor{::djinni::jniGetMethodID(clazz.get(), "<init>", "(ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V")};
    const jfieldID field_mCode{::djinni::jniGetFieldID(clazz.get(), "mCode", "I")};
    const jfieldID field_mBody{::djinni::jniGetFieldID(clazz.get(), "mBody", "Ljava/lang/String;")};
    const jfieldID field_mUrl{::djinni::jniGetFieldID(clazz.get(), "mUrl", "Ljava/lang/String;")};
    const jfieldID field_mHeaders{::djinni::jniGetFieldID(clazz.get(), "mHeaders", "Ljava/util/ArrayList;")};
};

} // namespace djinni_generated
