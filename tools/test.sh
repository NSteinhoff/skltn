#!/bin/sh
rm -rf test_output
rm -rf coverage_output
mkdir -p {coverage_output,test_output}
nosetests
