# Tests

Nativium come with C++ test support.

You can test C++ code with the following commands:

```
python nativium.py target tests prepare
python nativium.py target tests run
```

Obs: The verb **prepare** install all tests dependencies.

## Source

You can add, remove or edit tests changing files inside folder **apps/tests**.

On app tests you have some folders:

- **include:** contains include files and it is added as search path
- **include/fixtures:** contains all tests fixtures
- **src:** contains all tests sources

On target tests you have some folders:

- **cmake:** contains cmake module instructions by platform
