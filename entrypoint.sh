#! /bin/bash

echo "Compile: $1"

make

if [[ "$2" ]] ; then
    curl -X POST -H 'Content-Type: multipart/form-data' -F "files[]=@$1" "$2"
fi

