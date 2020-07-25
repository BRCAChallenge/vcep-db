#!/bin/bash
IMAGE_NAME=apache
docker build -t ${IMAGE_NAME} -f Dockerfile .
