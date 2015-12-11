#!/bin/bash
venv_name=.virtualenv_release
virtualenv_activate=./${venv_name}/bin/activate

# Validate the virtualenv and activate it
if [[ ! -e $virtualenv_activate ]]
then
  virtualenv $venv_name
fi
. ${virtualenv_activate}

pip install wheel

if [[ -e "./setup.py" ]]
then
  python setup.py sdist bdist_egg bdist_wheel
fi
