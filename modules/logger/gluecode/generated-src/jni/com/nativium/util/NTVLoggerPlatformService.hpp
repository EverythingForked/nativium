// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from proj.djinni

#pragma once

#include "djinni/jni/djinni_support.hpp"
#include "nativium/util/LoggerPlatformService.hpp"

namespace djinni_generated
{

class NTVLoggerPlatformService final : ::djinni::JniInterface<::nativium::util::LoggerPlatformService, NTVLoggerPlatformService>
{
public:
    using CppType = std::shared_ptr<::nativium::util::LoggerPlatformService>;
    using CppOptType = std::shared_ptr<::nativium::util::LoggerPlatformService>;
    using JniType = jobject;

    using Boxed = NTVLoggerPlatformService;

    ~NTVLoggerPlatformService();

    static CppType toCpp(JNIEnv *jniEnv, JniType j) { return ::djinni::JniClass<NTVLoggerPlatformService>::get()._fromJava(jniEnv, j); }
    static ::djinni::LocalRef<JniType> fromCppOpt(JNIEnv *jniEnv, const CppOptType &c) { return {jniEnv, ::djinni::JniClass<NTVLoggerPlatformService>::get()._toJava(jniEnv, c)}; }
    static ::djinni::LocalRef<JniType> fromCpp(JNIEnv *jniEnv, const CppType &c) { return fromCppOpt(jniEnv, c); }

private:
    NTVLoggerPlatformService();
    friend ::djinni::JniClass<NTVLoggerPlatformService>;
    friend ::djinni::JniInterface<::nativium::util::LoggerPlatformService, NTVLoggerPlatformService>;

    class JavaProxy final : ::djinni::JavaProxyHandle<JavaProxy>, public ::nativium::util::LoggerPlatformService
    {
    public:
        JavaProxy(JniType j);
        ~JavaProxy();

        void v(const std::string &message) override;
        void d(const std::string &message) override;
        void i(const std::string &message) override;
        void w(const std::string &message) override;
        void e(const std::string &message) override;
        void setGroup(const std::string &group) override;

    private:
        friend ::djinni::JniInterface<::nativium::util::LoggerPlatformService, ::djinni_generated::NTVLoggerPlatformService>;
    };

    const ::djinni::GlobalRef<jclass> clazz{::djinni::jniFindClass("com/nativium/util/LoggerPlatformService")};
    const jmethodID method_v{::djinni::jniGetMethodID(clazz.get(), "v", "(Ljava/lang/String;)V")};
    const jmethodID method_d{::djinni::jniGetMethodID(clazz.get(), "d", "(Ljava/lang/String;)V")};
    const jmethodID method_i{::djinni::jniGetMethodID(clazz.get(), "i", "(Ljava/lang/String;)V")};
    const jmethodID method_w{::djinni::jniGetMethodID(clazz.get(), "w", "(Ljava/lang/String;)V")};
    const jmethodID method_e{::djinni::jniGetMethodID(clazz.get(), "e", "(Ljava/lang/String;)V")};
    const jmethodID method_setGroup{::djinni::jniGetMethodID(clazz.get(), "setGroup", "(Ljava/lang/String;)V")};
};

} // namespace djinni_generated
