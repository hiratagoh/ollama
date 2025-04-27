#!/bin/bash
set -eux
git checkout main
git pull
git checkout l4t
git merge main
docker build -t ollama:head .
echo to run ollama
echo '$ docker run -dit --rm --gpus all --name ollama ollama:head'
