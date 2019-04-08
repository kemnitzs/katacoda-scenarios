#!/bin/bash

apt-get update
apt-get -y install cmake
pip install -y conan pygments

echo "done" >> /katacoda-background-finished