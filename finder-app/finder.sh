#!/bin/bash

if [[ $# -ne 2 ]]; then
    echo "Illegal number of parameters"
    exit 1
fi

filesdir=$1
searchstr=$2
echo $searchstr
if [ ! -d $filesdir ]; then
  echo "The directory $filesdir does not exists."
  exit 1
fi

echo "The number of files are $(find $filesdir -type f | wc -l) and the number of matching lines are $(grep -Rnw $filesdir -e $searchstr | wc -l)"
