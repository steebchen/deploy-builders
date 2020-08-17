#!/bin/bash

set -eux

if [ -f "package-lock.json" ]; then
	npm ci
elif [ -f "yarn.lock" ]; then
	yarn install
else
	npm install
fi
