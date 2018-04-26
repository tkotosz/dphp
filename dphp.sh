#!/bin/bash

function run() {
    if [ -z "$1" ]; then
        printf "please specify php version\n"
        return;
    fi

    if [ -z "$2" ]; then 
        docker run -ti --rm php:$1;
    else
        docker run -ti --rm -v $(pwd):/this php:$1 -f this/$2;
    fi

    printf "\n";
}

run $1 $2;
