#!/bin/bash
function abort() {
	echo $1
	exit 1;
}


# build
echo 'Building image'
docker build -t mapic/nginx:latest . || abort "Failed to create image"

echo "Pushing to Docker Hub"
docker push mapic/nginx:latest || abort "Failed to push image"