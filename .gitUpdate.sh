#!/bin/bash

if [[ `git status --porcelain` ]]; then
    git add .
    git commit -m "." 
    git push origin master
fi
