// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from proj.djinni

#pragma once

#include "djinni/jni/djinni_support.hpp"
#include "nativium/domain/Customer.hpp"

namespace djinni_generated
{

class NTVDomainCustomer final
{
public:
    using CppType = ::nativium::domain::Customer;
    using JniType = jobject;

    using Boxed = NTVDomainCustomer;

    ~NTVDomainCustomer();

    static CppType toCpp(JNIEnv *jniEnv, JniType j);
    static ::djinni::LocalRef<JniType> fromCpp(JNIEnv *jniEnv, const CppType &c);

private:
    NTVDomainCustomer();
    friend ::djinni::JniClass<NTVDomainCustomer>;

    const ::djinni::GlobalRef<jclass> clazz{::djinni::jniFindClass("com/nativium/domain/Customer")};
    const jmethodID jconstructor{::djinni::jniGetMethodID(clazz.get(), "<init>", "(JLjava/lang/String;Ljava/lang/String;Lcom/nativium/enumerator/CustomerStatusEnum;)V")};
    const jfieldID field_mId{::djinni::jniGetFieldID(clazz.get(), "mId", "J")};
    const jfieldID field_mName{::djinni::jniGetFieldID(clazz.get(), "mName", "Ljava/lang/String;")};
    const jfieldID field_mToken{::djinni::jniGetFieldID(clazz.get(), "mToken", "Ljava/lang/String;")};
    const jfieldID field_mStatus{::djinni::jniGetFieldID(clazz.get(), "mStatus", "Lcom/nativium/enumerator/CustomerStatusEnum;")};
};

} // namespace djinni_generated
