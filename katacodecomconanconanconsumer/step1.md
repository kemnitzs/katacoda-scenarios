The project has the following files:

- `main.cpp`: The program computing an MD5.
- `CMakeList.txt`: We are going to use CMake to build our example, but any other build system could be use
- `conanfile.txt`: We use this file to declare:
    - The **[requires]** of our project
    - The **[generators]**. Conan supports several generators, with the ``cmake`` one, we are telling conan
    to generate a cmake script for us that we can include in the ``CMakeLists.txt`` file to "link" with our 
    dependencies, in this case the ``Poco`` libraries.


Have a look to the project files:

- `cat main.cpp`{{execute}}
- `cat CMakeList.txt`{{execute}}
- `cat conanfile.txt`{{execute}}