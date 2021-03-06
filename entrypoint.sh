#! /bin/bash
set -e

PATH=$PATH:/usr/bin/vendor_perl
export PATH

cp /.latexmkrc . 

echo "Compile: $1"

if [[ -e 'requirements.txt' ]] ; then
    pip install -r requirements.txt
fi 

make

if [[ "$2" ]] ; then
    curl -X POST -H 'Content-Type: multipart/form-data' -F "files[]=@$1" "$2"
fi

