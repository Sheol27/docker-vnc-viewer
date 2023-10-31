#!/bin/bash

docker build -t vnc_viewer:latest .
docker run -it --rm -p 5920:5920 vnc_viewer:latest

