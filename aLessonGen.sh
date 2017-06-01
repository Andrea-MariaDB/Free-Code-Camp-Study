#!/usr/bin/env bash

#=================================================
# Auto module & lesson generator
#=================================================
set -u #Treat unset variables and parameters
set -e #Exit immediately if a pipeline returns a non-zero status
# set -x #echo on

## Get new module name and get rid of in name spaces ##
echo "Enter module name:"
read sNewModule

## Replace with lesson names of each module ##
declare -a aLessonNames=( 'LessonName' 'LessonName' 'LessonName')

if [ ! -d "$sNewModule" ]; then
	mkdir $sNewModule
fi
cd $sNewModule
for sLessonName in "${aLessonNames[@]}"
do
	touch "$sLessonName.html"
done
for f in *\ *; do mv "$f" "${f// /_}"; done
