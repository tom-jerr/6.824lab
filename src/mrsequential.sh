#!/bin/bash

export VERBOSE=$1
export TMPDIR=/home/lzy/6.824/build/tmp/
export OUTDIR=/home/lzy/6.824/src/main/

go build -race -buildmode=plugin /home/lzy/6.824/src/mrapps/wc.go

echo "build wc.go successfully!"

go run -race /home/lzy/6.824/src/main/mrsequential.go /home/lzy/6.824/src/main/wc.so /home/lzy/6.824/src/main/pg*.txt 
cp /home/lzy/6.824/src/main/mr-out-0 /home/lzy/6.824/build/mr-out

echo "result generate successfully!"