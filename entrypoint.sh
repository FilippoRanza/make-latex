#! /bin/bash
set -e


echo "Compile: $1"

if [[ -e 'requirements.txt' ]] ; then
    pip install -r requirements.txt
fi 


# in order to compile Rust code
mkdir '/github/home/.cargo/registry/index/'
chmod +x '/github/home/.cargo/registry/index/'


make

if [[ "$2" ]] ; then
    curl -X POST -H 'Content-Type: multipart/form-data' -F "files[]=@$1" "$2"
fi

