#!/bin/bash

cd assets && npm install && node node_modules/brunch/bin/brunch build && cd ..
mix phx.server
