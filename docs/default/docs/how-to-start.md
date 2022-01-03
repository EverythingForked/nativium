# How to start

There are 6 steps to start:

1 - Clone reposity:

```
git clone https://github.com/nativium/nativium.git
```

2 - Enter on cloned folder:

```
cd nativium
```

3 - Install python requirements:

```
pip install -r requirements.txt
```

4 -  Setup conan tool:

```
python nativium.py conan setup
```

5 - Setup glue code tool:

```
python nativium.py gluecode setup
```

6 - Now all commands are available. Run the following command to list all targets that you can build:

```
python nativium.py target
```

Example: If you are on **Linux**, you can build the **linux** target, if on **macOS** you can run **macos** target and if on **Windows** you can run **windows**.

```
python nativium.py target linux prepare  
python nativium.py target linux build  
python nativium.py target linux package  
python nativium.py target linux dist generate  
```

**Obs:**

1. You can download the project as a ZIP file too: https://github.com/nativium/nativium/archive/main.zip.
2. After run this commands above, a folder called **"dist"** will be created with compiled binaries of applications. The rule is the same for other targets.
3. The execution order is important. You need prepare files and dependencies, build, package and finally distribute.
4. Package verbs will copy files to a non versioned folder called **"dist"** in root path.
5. You don't need run **prepare** verb everytime, only run if you never run it before or if you change configuration (example is version number), added dependencies, changed dependency version or other things that need call **prepare** to generate target files and rebuilt your dependencies.
6. Conan profiles are required to specify basic environment profile things to build targets, but some settings are changed while build, like **arch** and **build_type**.
7. Check requirements for each target. Example: iOS target require that you have a macOS system.
