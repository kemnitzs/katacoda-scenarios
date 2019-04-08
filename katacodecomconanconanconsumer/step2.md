Create a clean "build" folder:

`mkdir build`{{execute}}


Install the requirements:

`conan install ..`{{execute}}


Conan has download the ``Poco`` package and has generated for us a ``conanbuildinfo.cmake`` file that
can be included in the ``CMakeLists.txt`` file.
We can proceed to build normally our project.


`cmake ..`{{execute}}
`cmake --build .`{{execute}}

And run the executable:

`./main`{{executable}}


NOTE: Conan is distributed, very similar to git, you can have several remotes configured, by default, `conan-center` 
is used but you can run your own (even on-premises) server and store there your own packages.
We will show it in the following scenarios.


