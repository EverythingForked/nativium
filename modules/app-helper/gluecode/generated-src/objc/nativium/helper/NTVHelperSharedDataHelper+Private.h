// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from proj.djinni

#include "nativium/helper/SharedDataHelper.hpp"
#include <memory>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@class NTVHelperSharedDataHelper;

namespace djinni_generated
{

class SharedDataHelper
{
public:
    using CppType = std::shared_ptr<::nativium::helper::SharedDataHelper>;
    using CppOptType = std::shared_ptr<::nativium::helper::SharedDataHelper>;
    using ObjcType = ::NTVHelperSharedDataHelper *;

    using Boxed = SharedDataHelper;

    static CppType toCpp(ObjcType objc);
    static ObjcType fromCppOpt(const CppOptType &cpp);
    static ObjcType fromCpp(const CppType &cpp) { return fromCppOpt(cpp); }

private:
    class ObjcProxy;
};

} // namespace djinni_generated
