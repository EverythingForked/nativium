# Libraries

Nativium can use any C++ library. Today the dependency manager used is [Conan](https://conan.io/). With Conan you can add any library that fit your needs.

Conan main recipe list is hosted on Github:

[https://github.com/conan-io/conan-center-index/tree/master/recipes](https://github.com/conan-io/conan-center-index/tree/master/recipes)

Nativium already use some libraries:

1. **Djinni Support Lib**  
    Mobile glue code is automatically generated using Djinni tool. It can be removed if you don't use.

    The support library is used as a wrapper between C++ and platforms code, like JNI and OBJC.
