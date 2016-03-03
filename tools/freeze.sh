#!/bin/bash

venv_name=.venv_freeze
venv_bin=./${venv_name}/bin

# Validate the virtualenv and activate it
if [[ ! -e $venv_name ]]
then
    virtualenv --clear $venv_name
else
    virtualenv $venv_name
fi

$venv_bin/pip freeze > requirements-release.txt
