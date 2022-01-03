# Commands

Commands are functions executed from command line (terminal) that let you work with Nativium without need other tools, complex GUI libraries or other requirements.

Every command script in Nativium is a python file hosted on **commands**. 

Commands are simple functions that will receive command line arguments, project path and will executed desired operations. Example:

```python nativium.py clean```

or

```python nativium.py code format```

So, when you execute `python nativium.py clean` Nativium will search for a file with path **"commands/clean.py"** and will send all parameter to a function called **"run"** inside the file **clean.py**.

If you don't remember what commands are available you can type only this to list all commands:

```python nativium.py```

If you want create your own commands put the file inside folder **"commands"** and execute `python nativium.py` on terminal to see it in command list.
