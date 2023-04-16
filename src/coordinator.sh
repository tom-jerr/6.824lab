#!/bin/bash

export VERBOSE=$1
export TMPDIR=/home/lzy/6.824/build/tmp/
export OUTDIR=/home/lzy/6.824/src/main/

go build -race -o /home/lzy/6.824/build/bin/coordinator /home/lzy/6.824/src/main/mrcoordinator.go

echo "build coordinator successfully!"

nohup /home/lzy/6.824/build/bin/coordinator /home/lzy/6.824/src/main/pg-*.txt > /home/lzy/6.824/build/logs/coordinator.log 2>&1 &

tail -200f /home/lzy/6.824/build/logs/coordinator.log