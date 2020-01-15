#!/bin/sh

echo ----------------------------------------------------------------------------------
echo Spliting Tool
echo Usage:
echo ----------------------------------------------------------------------------------
echo Input:
echo ----------------------------------------------------------------------------------
echo Param 1: Directory containing the file
echo Param 2: File name without extension eg: Verification
echo Param 3: Size in bytes per file eg: 300000000 i.e 300Mb
echo ----------------------------------------------------------------------------------
echo Output:
echo ----------------------------------------------------------------------------------
echo Zip containing splitted files in $2.split.zip format eg: CIFVerification.split.zip
echo ----------------------------------------------------------------------------------

HOME_DIR=${1}

echo "Start split file: $2"

mkdir $HOME_DIR/split_tmp
cd $HOME_DIR/split_tmp/split_tmp
cp ../$2.txt $2.txt
split -b $3 $2.txt $2_
for i in $2_*; do awk 'sub("$", "\r")' $i > $i.txt; rm -rf $i; done
zip ../$2.split.zip $2_*.txt
cd ..
rm -rf split_tmp

echo "Finish split file: $2"