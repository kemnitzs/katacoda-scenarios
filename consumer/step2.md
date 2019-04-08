Create a clean "build" folder:

`mkdir build && cd build`{{execute}}

Install the requirements:

`conan install ..`{{execute}}

Conan has downloaded the ``Poco`` package and has generated for us a ``conanbuildinfo.cmake`` file that
can be included in the ``CMakeLists.txt`` file. That file correspond to the ``cmake`` generator we specified in the 
`conanfile.txt` file. The file contains the location of the 

`show conanbuildinfo.cmake`{{execute}}

So if we inspect the conan local cache we can see the downloaded packages:

`conan search`{{execute}}

If we inspect that concrete reference, we get the binaries:

`conan search Poco/1.9.0@pocoproject/stable`{{execute}}


So, we have everything we need from Conan. We can proceed to build our project normally:


`cmake ..`{{execute}}

`cmake --build .`{{execute}}

And run the executable:

`./main`{{execute}}


NOTE: Conan is distributed, very similar to git, you can have several remotes configured, by default, `conan-center` 
is used but you can run your own (even on-premises) server and store there your own packages.
We will show it in the following scenarios.


