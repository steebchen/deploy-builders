#!/bin/bash

set -eux

tests=($(ls -d test/*))

for dir in "${tests[@]}"; do
	rm -rf "common/"
	mkdir -p "common/"
	rm -rf "user/"
	mkdir -p "user/"
	cp -r "$dir/" "user"
	cp -r "../../common/" "common"

	docker build -f Dockerfile -t "builder-$dir" .

	echo "$dir success"
done

echo "test succeeded"
