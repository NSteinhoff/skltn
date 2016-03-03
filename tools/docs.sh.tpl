#!/bin/bash

venv_name=.virtualenv_docs
venv_bin=./${venv_name}/bin

# Validate the virtualenv and activate it
if [[ ! -e $venv_name ]]
then
    virtualenv --clear $venv_name
else
    virtualenv $venv_name
fi

$venv_bin/pip install -r requirements.txt
$venv_bin/pip install -r requirements-doc.txt

$venv_bin/sphinx-apidoc -o docs/source ${package}
$venv_bin/python setup.py build_sphinx
