#!/bin/bash

# Productions Instructions

#* The production website is hosted on Ubuntu 18.04 Docker Conteiner
#* The applications "GoHugo" and "Make" are installed with `apt-get update && apt-get install -y hugo make`.
sudo apt-get update && sudo apt-get install -y hugo make
# Put your root password and when runs the command make build, there is a buch of errors that ends in the follow line
make build
