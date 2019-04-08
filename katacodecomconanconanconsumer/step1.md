Let's have a look to the project files, you can click on the command to run it:

`cat main.cpp`{{execute}}

This is a simple program computing an MD5, you can see that we are including some headers from Poco.

`cat CMakeLists.txt`{{execute}}

We are going to use CMake to build our example, but any other build system could be used.
The only particular thing with 

`cat conanfile.txt`{{execute}}

We use this file to declare:
    
- The **[requires]** of our project
- The **[generators]**. Conan supports several generators, with the ``cmake`` one, we are telling conan
  to generate a cmake script for us that we can include in the ``CMakeLists.txt`` file to "link" with our 
  dependencies, in this case the ``Poco`` libraries.