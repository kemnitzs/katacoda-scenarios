#!/bin/bash

apt-get update
apt-get -y install cmake
pip install conan pygments
mv /usr/local/bin/show /bin/cat

echo "done" >> /katacoda-background-finished