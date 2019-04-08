In the previous step we have installed the dependencies and build our project for `Release`, now we 
want to build it for `Debug`.

Create a new clean "build_debug" folder:

`cd ~ && mkdir build_debug && cd build_debug`{{execute}}

Install the requirements, observe that with `-s build_type=Debug` we are overriding the default `build_type` that is Release:

`conan install .. -s build_type=Debug`{{execute}}


If we inspect again the concrete `Poco` reference, we see that we have now two binaries:

- One for our default configuration: `build_type=Release`
- Another one for `build_type=Debug`

`conan search Poco/1.9.0@pocoproject/stable`{{execute}}

Build our project normally:

`cmake .. -DCMAKE_BUILD_TYPE=Debug`{{execute}}

`cmake --build .`{{execute}}

And run the executable:

`./bin/main`{{execute}}
