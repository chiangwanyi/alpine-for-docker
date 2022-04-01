#!/bin/bash

version=$(cat $PWD/VERSION)

docker build -t my-alpine:$version .
