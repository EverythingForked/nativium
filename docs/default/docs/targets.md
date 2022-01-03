# Targets

A target describe how the code will be compiled (each platform is a target).

The target have all files and scripts to build C++ code to some platform. You can see all targets inside folder **"targets"**.

Currently all targets use CMake to compile and generate project files ready to build. So each target has their own **cmake** folder with some CMake files, example `targets/linux/cmake/target.cmake` and `targets/linux/cmake/source.cmake`.

Generally all targets share the most C++ code and CMake code in the project. Because this, Nativium has a commom CMake folder on root called **cmake**.

Some targets add more source files and compile parameters. Some examples are the targets **"android"** that add their JNI files and **"ios"** that add their OBJC files.

A target has their **"verbs"** that can have any name like **build**, **package** etc. All verbs are stored inside **"verbs"** folder of a target and this will be used to appear on target verb list when you call the target on terminal. Example:

```python nativium.py target linux```

and

```python nativium.py target linux build```

It will execute bootstrap file of Nativium, that will do some validations and will search for a file with the path `targets/linux/verbs/build.py` and will send all parameter to a function called **run** inside it.

If you don't remember what verbs are available for a target you can type only this to list all verbs:

```python nativium.py target linux```
