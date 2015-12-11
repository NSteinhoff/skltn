#!/bin/bash
echo `python --version`
python setup.py flake8 > flake8.txt
