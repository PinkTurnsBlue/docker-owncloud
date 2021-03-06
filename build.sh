#!/bin/sh

OWNCLOUD_VERSION=8.0.2

docker build $@ --rm -t owncloud:${OWNCLOUD_VERSION} .
docker tag owncloud:${OWNCLOUD_VERSION} owncloud:latest

docker build $@ --rm -t owncloud-data - < Dockerfile.DC
