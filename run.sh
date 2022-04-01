#!/bin/bash

version=$(cat $PWD/VERSION)

docker run -it my-alpine:$version /bin/bash
