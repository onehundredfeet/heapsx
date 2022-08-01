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

makedev $1 "castledbx"
makedev $1 "domkit"
makedev $1 "differx"
makedev $1 "format"
makedev $1 "hmecs"
makedev $1 "hai"
makedev $1 "heaps"
makedev $1 "haxe-strings"
makedev $1 "heaps-yojimbo"
makedev $1 "hidex"
makedev $1 "hl-bullet"
makedev $1 "hl-chipmunk2d"
makedev $1 "hl-idl"
makedev $1 "hl-forge"
makedev $1 "hl-recast"
makedev $1 "hl-yojimbo"
makedev $1 "hxbit"
makedev $1 "hvector"
makedev $1 "hlsteam"
makedev $1 "tink_core"
makedev $1 "tink_macro"
makedev $1 "haxe-concurrent"
makedev $1 "seedyrng"
makedev $1 "signals"

mkdir -p $1/.haxelib/heapsx
echo $PWD > $1/.haxelib/heapsx/.dev

mkdir -p $1/.haxelib/hlsdl
echo "$PWD/hashlink/libs/sdl" > $1/.haxelib/hlsdl/.dev
mkdir -p $1/.haxelib/hlopenal
echo "$PWD/hashlink/libs/hlopenal" > $1/.haxelib/hlopenal/.dev


pushd $1 &> /dev/null
haxelib install hscript

popd &> /dev/null

echo "Completed setting up $1"
fi
