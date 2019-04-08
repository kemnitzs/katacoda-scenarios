#!/bin/bash

apt-get update
apt-get -y install cmake
pip install conan

echo "done" >> /katacoda-background-finished