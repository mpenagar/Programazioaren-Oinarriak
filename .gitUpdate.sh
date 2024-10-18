#!/bin/bash
# v1.0 2024/02/08
#
# Si se actualiza el PAT (Personal Access Token), hay que volver a clonar el repositorio
# para tener acceso de escritura: 
#
# git clone https://<PAT>@github.com/mpenagar/Programazioaren-Oinarriak.git

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
