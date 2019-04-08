#!/bin/bash

apt-get update
apt-get -y install cmake
pip install conan pygments
mv /usr/local/show /usr/local/cat

echo "done" >> /katacoda-background-finished