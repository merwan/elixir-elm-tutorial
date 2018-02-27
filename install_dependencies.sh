#!/bin/bash

curl -sL https://deb.nodesource.com/setup_8.x | bash -
apt-get install -y nodejs
rm -rf /var/lib/apt/lists/*

mix local.rebar --force
mix local.hex --force
