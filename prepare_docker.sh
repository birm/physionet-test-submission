#!/usr/bin/env sh
docker build -t python-psa-ex .
docker run -v $(pwd)/outputs:/challenge/outputs python-psa-ex

# evaluation
