Create a clean "build" folder:

`mkdir build && cd build`{{execute}}

Install the requirements:

`conan install ..`{{execute}}

Conan has downloaded the ``Poco`` package and has generated for us a ``conanbuildinfo.cmake`` file that
can be included in the ``CMakeLists.txt`` file. That file correspond to the ``cmake`` generator we specified in the 
`conanfile.txt` file. The file declares many variables with all the information about the dependency tree:
 - The location of the libraries
 - The location of the headers
 - The library names.
 - Any flag we need to compile or link etc. 
 - Also some convenient macros that we can use to setup everything quickly.
 
`head -20 conanbuildinfo.cmake`{{execute}}

If we inspect the conan local cache we can see the downloaded packages:

`conan search`{{execute}}

We can see that not only `Poco` library has been downloaded, also the transitive dependencies.

If we inspect that concrete reference, we get the binaries:

`conan search Poco/1.9.0@pocoproject/stable`{{execute}}


So, we have everything we need from Conan. We can proceed to build our project normally:


`cmake ..`{{execute}}

`cmake --build .`{{execute}}

And run the executable:

`./bin/main`{{execute}}
