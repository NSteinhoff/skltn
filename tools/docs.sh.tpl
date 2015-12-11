#!/bin/bash
sphinx-apidoc -o docs/source ${package}
python setup.py build_sphinx
