#!/bin/sh
newdir=./ResearchUnix
file=Year
mkdir -p $newdir
cd $newdir
echo "1972" > $file
mkdir BSD
cd BSD
echo "1977" > $file
mkdir NextStep
cd NextStep
echo "1988" > $file
mkdir macOS
cd macOS
echo "2002" > $file
cd ../..
mkdir FreeBSD
cd FreeBSD
echo "1993" > $file
cd ../..
mkdir Commercial
cd Commercial
echo "1984" > $file
mkdir Solaris
cd Solaris
echo "1991" > $file
echo $PWD
