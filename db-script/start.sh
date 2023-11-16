#!/bin/bash
rm -f -r ../db/*
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
./script.sh
wait
sleep 5
./populate.sh