#!/bin/bash
set -e

dir=$(pwd)

for i in http-status-code myip useragent
do
    echo "building: $i"

    cd ${dir}/${i}
    docker build . -t $i

    echo "done: $i"
done