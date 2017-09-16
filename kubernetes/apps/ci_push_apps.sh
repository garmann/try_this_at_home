#!/bin/bash
set -e

dir=$(pwd)

for i in http-status-code myip useragent
do
    echo "pushing: $i"

    cd ${dir}/${i}
    docker tag $i garmann/${i}
    docker push garmann/${i}

    echo "done: $i"
done