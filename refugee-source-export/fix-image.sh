#!/bin/bash

SOURCEDIR="image-orig"
DESTDIR="image-corrected"

#echo "Image Source: ${SOURCEDIR}/${1}.jpg"
#echo "Image Dest: ${DESTDIR}/${2}.jpg"

cp ${SOURCEDIR}/${1}.jpg ${DESTDIR}/${2}.jpg

tree image-corrected

