Create a clean "build" folder:

`mkdir build && cd build`{{execute}}

Install the requirements:

`conan install ..`{{execute}}

- Conan downloads the requirements and the transitive dependencies to a local cache. The installed
packages correspond to the `default` profile of this machine, you can list the default profile:

    `conan profile show default`{{execute}}

- Because we specified the ``cmake`` generator in the ``conanfile.txt``,  conan also generated a ``conanbuildinfo.cmake`` 
file that can be included in the ``CMakeLists.txt`` file. The file declares many variables with all 
the information about the dependency tree:
     - The location of the libraries
     - The location of the headers
     - The library names.
     - Any flag we need to compile or link... etc
 
Also some convenient macros that we can use to setup everything quickly:
 
`head -20 conanbuildinfo.cmake`{{execute}}

If we inspect the conan local cache we can see the downloaded packages:

`conan search`{{execute}}

We can see that not only `Poco` library has been downloaded, also the transitive dependencies, ``OpenSSL`` and ``zlib``.

If we inspect that concrete reference, we see that we have a binary for our default configuration:

`conan search Poco/1.9.0@pocoproject/stable`{{execute}}


So, we have everything we need from Conan. We can proceed to build our project normally:


`cmake .. -DCMAKE_BUILD_TYPE=Release`{{execute}}

`cmake --build .`{{execute}}

And run the executable:

`./bin/main`{{execute}}
