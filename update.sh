#!/bin/sh
git submodule update --remote --merge

if [ -z "$1" ] 
then
    echo "No project directory supplied"
else
echo "Using direcotry $1"

pushd $1 &> /dev/null
haxelib upgrade hscript
haxelib upgrade tink_core
haxelib upgrade tink_macro
haxelib upgrade hlsdl
haxelib upgrade haxe-concurrent
haxelib upgrade seedyrng
haxelib upgrade signals

popd &> /dev/null

echo "Completed setting up $1"
fi
