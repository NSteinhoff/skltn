#!/bin/bash
python setup.py build_sphinx &&
sphinx-apidoc -o docs/source ${package}