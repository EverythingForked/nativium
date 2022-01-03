<p align="center">
    <a href="https://github.com/nativium/nativium" target="_blank" rel="noopener noreferrer">
        <img width="180" src="extras/images/logo.png" alt="Nativium Logo">
    </a>
    <br>
    <br>
    C++ Multiplatform Modular Toolkit Template
    <br>
    Nativium Philosophy: Write Once And Compile Anywhere
    <br>
</p>

<br>

<p align="center">
    <a href="https://github.com/nativium/nativium/actions/workflows/linux.yml"><img src="https://github.com/nativium/nativium/actions/workflows/linux.yml/badge.svg"></a>
    <a href="https://github.com/nativium/nativium/actions/workflows/macos.yml"><img src="https://github.com/nativium/nativium/actions/workflows/macos.yml/badge.svg"></a>
    <a href="https://github.com/nativium/nativium/actions/workflows/windows.yml"><img src="https://github.com/nativium/nativium/actions/workflows/windows.yml/badge.svg"></a>
    <a href="https://github.com/nativium/nativium/actions/workflows/ios.yml"><img src="https://github.com/nativium/nativium/actions/workflows/ios.yml/badge.svg"></a>
    <a href="https://github.com/nativium/nativium/actions/workflows/android.yml"><img src="https://github.com/nativium/nativium/actions/workflows/android.yml/badge.svg"></a>
    <a href="https://github.com/nativium/nativium/actions/workflows/wasm.yml"><img src="https://github.com/nativium/nativium/actions/workflows/wasm.yml/badge.svg"></a>
    <a href="https://github.com/nativium/nativium/actions/workflows/docs.yml"><img src="https://github.com/nativium/nativium/actions/workflows/docs.yml/badge.svg"></a>
</p>

## About

Write a single code in C++ for the business logic with Nativium and compile for any platform.

You don't need rewrite your application because the generated binary can be attached to an existing application.

Supported platforms:

- Linux
- macOS
- Windows
- iOS
- tvOS
- watchOS
- macCatalyst
- WebAssembly (wasm)

Only need write platform-specific code where it’s necessary .For example, to implement a native user-interface or when working with platform-specific code, like get device battery level.

<p align="center">
    <a href="https://github.com/nativium/nativium" target="_blank" rel="noopener noreferrer">
        <img src="extras/images/guide.png" alt="Nativium Guide" style="width: 85%; max-width: 700px;">
    </a>
</p>

## How it work?

Nativium have two main concepts:

- **modules:** what code and dependencies need be compiled
- **targets:** how the code will be compiled (each platform is a target)

## What tools was used?

- **python:** to write all scripts (everything work from command line)
- **cmake:** to organize source code and projects to be compiled
- **conan:** to compile all C++ dependencies

## Template

This is a template repository that let you start easy and now your own project.

Think about your code instead of C++ project structure and organization, it is already done with Nativium.

Download this template and check sample apps to test and see it working on mobile, desktop and web.

Every command to setup, prepare, publish and generate final binary can be executed from command line and you can use any editor to work with Nativium.

Each piece of code is separated by modules, making easy extend with your custom code or any other C++ code and library.

## Documentation

You can read all about Nativium in the auto-generated documentation:

[https://nativium.s3.amazonaws.com/docs/index.html](https://nativium.s3.amazonaws.com/docs/index.html)

## Demo

The Android sample can be downloaded here:

[https://play.google.com/store/apps/details?id=com.nativium.sample](https://play.google.com/store/apps/details?id=com.nativium.sample)

The iOS (also watchOS and macOS) sample can be downloaded here:

[https://apps.apple.com/br/app/nativium-c-tasks/id1492446109](https://apps.apple.com/br/app/nativium-c-tasks/id1492446109)

## Buy me a coffee

<a href='https://ko-fi.com/paulocoutinho' target='_blank'><img height='36' style='border:0px;height:36px;' src='https://az743702.vo.msecnd.net/cdn/kofi1.png?v=2' border='0' alt='Buy Me a Coffee at ko-fi.com' /></a>

## License

[MIT](http://opensource.org/licenses/MIT)

Copyright (c) 2021-2022, Paulo Coutinho
