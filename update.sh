#!/bin/sh
git submodule update --remote --merge

if [ -z "$1" ] 
then
    echo "No project directory supplied"
else
echo "Using direcotry $1"

pushd $1 &> /dev/null
haxelib upgrade hscript

popd &> /dev/null

echo "Completed setting up $1"
fi
