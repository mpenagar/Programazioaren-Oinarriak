#!/bin/bash
# v1.0 2024/02/08


if [[ `whoami` == "mpenagar" ]] ; then
    cd $(dirname $0)
    if [[ `git status --porcelain` ]]; then
        git add .
        git commit -m "autosync" 
        git push origin master
    fi
else
    su mpenagar $0
fi
