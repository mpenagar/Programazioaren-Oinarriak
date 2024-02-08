#!/bin/bash

if [[ `whoami` == "mpenagar" ]] ; then
    cd $(dirname $0)
    if [[ `git status --porcelain` ]]; then
        git add .
        git commit -m "." 
        git push origin master
    fi
else
    su mpenagar $0
fi
