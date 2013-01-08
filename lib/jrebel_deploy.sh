#!/bin/bash 

if [  -d $PWD/sites/greenfieldtimes-example/ ]; then
	cd $PWD/sites/greenfieldtimes-example/
	echo "moving to $PWD/sites/greenfieldtimes-example/"
elif [ "$(basename ${PWD})" == "greenfieldtimes-example" ]; then
	echo "staying at $PWD/sites/greenfieldtimes-example/"
else
	echo "Could not resolve greenfieldtimes-example"
	exit 1
fi 

for dir in `find . -name webapp | grep -v work | grep -v target`
do
   mkdir -pv ${dir}/WEB-INF/classes
   cp -v ~/.jrebel/rebel.xml ${dir}/WEB-INF/classes
done