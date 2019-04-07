#!/bin/sh

# Script to exercise everything.
set -eux

for x in fs mtp
do
    go build github.com/softashell/go-mtpfs/$x
    go test -i github.com/softashell/go-mtpfs/$x
    go test github.com/softashell/go-mtpfs/$x
done

go build github.com/hanwen/go-mtpfs
