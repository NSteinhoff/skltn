#!/bin/bash

venv_name=.venv_release
venv_bin=./${venv_name}/bin

# Validate the virtualenv and activate it
if [[ ! -e $venv_name ]]
then
    virtualenv --clear $venv_name
else
    virtualenv $venv_name
fi

$venv_bin/pip install wheel
$venv_bin/pip install -r requirements-release.txt
$venv_bin/pip install ${package}

$venv_bin/python setup.py sdist bdist_egg bdist_wheel
