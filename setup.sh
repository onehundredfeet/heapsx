#!/bin/sh

makedev () {
    mkdir -p $1/.haxelib/$2
    echo $PWD/$2 > $1/.haxelib/$2/.dev
}

if [ -z "$1" ] 
then
    echo "No project directory supplied"
else
echo "Using direcotry $1"
mkdir -p $1/.haxelib

makedev $1 "castle"
makedev $1 "domkit"
makedev $1 "format"
makedev $1 "heaps"
makedev $1 "hcqe"
makedev $1 "heaps-yojimbo"
makedev $1 "hide"
makedev $1 "hl-bullet"
makedev $1 "hl-chipmunk2d"
makedev $1 "hl-idl"
makedev $1 "hl-recast"
makedev $1 "hl-yojimbo"
makedev $1 "hxbit"
#makedev $1 "hscript"
makedev $1 "hvector"

mkdir -p $1/.haxelib/heapsx
echo $PWD > $1/.haxelib/heapsx/.dev

pushd $1 &> /dev/null
haxelib install hscript
haxelib install tink_macro
haxelib install hlsdl
popd &> /dev/null

echo "Completed setting up $1"
fi
