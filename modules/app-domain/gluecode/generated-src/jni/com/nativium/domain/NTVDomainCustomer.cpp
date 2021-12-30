// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from proj.djinni

#include "com/nativium/domain/NTVDomainCustomer.hpp" // my header
#include "com/nativium/enumerator/NTVEnumeratorCustomerStatusEnum.hpp"
#include "djinni/jni/Marshal.hpp"

namespace djinni_generated
{

NTVDomainCustomer::NTVDomainCustomer() = default;

NTVDomainCustomer::~NTVDomainCustomer() = default;

auto NTVDomainCustomer::fromCpp(JNIEnv *jniEnv, const CppType &c) -> ::djinni::LocalRef<JniType>
{
    const auto &data = ::djinni::JniClass<NTVDomainCustomer>::get();
    auto r = ::djinni::LocalRef<JniType>{jniEnv->NewObject(data.clazz.get(), data.jconstructor,
                                                           ::djinni::get(::djinni::I64::fromCpp(jniEnv, c.id)),
                                                           ::djinni::get(::djinni::String::fromCpp(jniEnv, c.name)),
                                                           ::djinni::get(::djinni::String::fromCpp(jniEnv, c.token)),
                                                           ::djinni::get(::djinni_generated::NTVEnumeratorCustomerStatusEnum::fromCpp(jniEnv, c.status)))};
    ::djinni::jniExceptionCheck(jniEnv);
    return r;
}

auto NTVDomainCustomer::toCpp(JNIEnv *jniEnv, JniType j) -> CppType
{
    ::djinni::JniLocalScope jscope(jniEnv, 5);
    assert(j != nullptr);
    const auto &data = ::djinni::JniClass<NTVDomainCustomer>::get();
    return {::djinni::I64::toCpp(jniEnv, jniEnv->GetLongField(j, data.field_mId)),
            ::djinni::String::toCpp(jniEnv, (jstring)jniEnv->GetObjectField(j, data.field_mName)),
            ::djinni::String::toCpp(jniEnv, (jstring)jniEnv->GetObjectField(j, data.field_mToken)),
            ::djinni_generated::NTVEnumeratorCustomerStatusEnum::toCpp(jniEnv, jniEnv->GetObjectField(j, data.field_mStatus))};
}

} // namespace djinni_generated