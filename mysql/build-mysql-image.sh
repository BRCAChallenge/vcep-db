#!/bin/bash
IMAGE_NAME=mysql
docker build -t ${IMAGE_NAME} -f Dockerfile .
