Now we are building our project but for the `x86` architecture.

Create a new clean "build_x86" folder:

`cd ~ && mkdir build_x86 && cd build_x86`{{execute}}

Install the requirements, observe that with `-s arch=x86` we are overriding the default architecture to specify 32 bits:

`conan install .. -s arch=x86`{{execute}}


If we inspect again the concrete `Poco` reference, we see that we have now two binaries:

- One for our default configuration: `arch=x86_64`
- Another one for `arch=x86_64`

`conan search Poco/1.9.0@pocoproject/stable`{{execute}}

We can proceed to build our project normally:

`cmake ..`{{execute}}

`cmake --build .`{{execute}}

And run the executable:

`./bin/main`{{execute}}
