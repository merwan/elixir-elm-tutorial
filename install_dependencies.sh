#!/bin/bash

curl -sL https://deb.nodesource.com/setup_8.x | bash -
apt-get install -y nodejs
rm -rf /var/lib/apt/lists/*

mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phx_new.ez
