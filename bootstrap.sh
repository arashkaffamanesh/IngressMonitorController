#!/usr/bin/env sh

cd ${SRC_DIR}

echo "Fetching dependencies.."
glide update

echo "Copying dependencies to GOPATH..."
cp -r ./vendor/* /go/src/

echo "Building the controller..."
go build -o ./out/main

echo "Running the controller..."
./out/main