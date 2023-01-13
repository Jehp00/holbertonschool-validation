#!/bin/bash
apt update
apt-get update && apt-get install -y make
apt install curl
curl -L https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_linux-amd64.deb -o hugo.deb
apt install ./hugo.deb
make build