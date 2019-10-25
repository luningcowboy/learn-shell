#!/bin/bash
echo hello; echo three
filename='demo2.sh'
if [ -x "${filename}" ]; then
				echo "File $filename exists"; cp $filename $filename.bak
else
				echo "File $filename does not exist"; touch $filename
fi;
