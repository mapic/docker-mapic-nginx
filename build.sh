#!/bin/bash
function abort() {
	echo $1
	exit 1;
}


# build
echo 'Building image'
docker build -t mapic/nginx:latest . || abort "Failed to create nginx image"
