if [ -z "$1" ] 
then
    echo "No project directory supplied"
else
echo "Using directory $1"
rm -rf $1/.haxelib
fi

