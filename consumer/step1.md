We have a very simple C++ project computing an MD5 checksum from a string using the `Poco` library.
Let's have a look to the project files, you can click at any command to execute it:

`show main.cpp`{{execute}}

This is a simple program computing an MD5, you can see that we are including some headers from Poco.

`show CMakeLists.txt`{{execute}}

We are going to use CMake to build our example, but any other build system could be used.
The only particular thing in this ``CMakeLists.txt`` file is the inclusion of the ``conanbuildinfo.cmake``
we will see why very soon.


`show conanfile.txt`{{execute}}

We use this file to declare:
    
- The **[requires]** of our project, where we declare we need the version `1.9.0` of the `Poco` library.
- The **[generators]**. Conan supports several generators, with the ``cmake`` one, we are telling conan
  to generate a cmake script for us that we can include in the ``CMakeLists.txt`` file to "link" with our 
  dependencies, in this case the ``Poco`` libraries.