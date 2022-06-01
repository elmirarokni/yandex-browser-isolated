#!/bin/bash
if [ $# -eq -0 ]; then
    bash
else
    echo "xauth add $1"
    echo
    xauth add $1
    yandex-browser --no-sandbox
fi

