#!/usr/bin/env sh

PORT=${PORT:-8999}

docker run --rm -v $HOME/Development/notebooks:/data:rw -p ${PORT}:8080 -e EXTERNAL_PORT=${PORT} nicklarsennz/jupyter-manim:latest
