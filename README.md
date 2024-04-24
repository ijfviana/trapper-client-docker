# Trapper Client Docker

This repository contains a Dockerfile and related resources for running Trapper Client in a Docker container on your local environment.

## Prerequisites

Docker installed on your local machine

## Building the Docker image

To build the Docker image, run the following command in the directory containing the Dockerfile:

```
docker build -t trapper-client:latest .
```

## Running the Docker container

To run the Docker container, execute the following command:

```
xhost +
docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix trapper-client:latest
```
