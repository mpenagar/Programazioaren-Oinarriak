#!/bin/bash

echo $0
cd $(dirname $0)

if [[ `git status --porcelain` ]]; then
    git add .
    git commit -m "." 
    git push origin master
    echo DONE
fi
