# skltn - A Python Project Template

This project provides a template for Python projects. It uses

* [setuptools](http://pythonhosted.org/setuptools/merge.html) for distribution
* [sphinx](http://sphinx-doc.org/) for documentation
* [flake8](https://pypi.python.org/pypi/flake8) for code style checks
* [tox](https://tox.readthedocs.org/en/latest/), [pytest](https://pytest.org/latest/) and [coverage](https://coverage.readthedocs.org/en/latest/) for testing
* [versioneer](https://github.com/warner/python-versioneer) to auto-update the version string

`skltn` is inspired by https://github.com/rocktavious/python-project-template

## Setup Instructions

1. Clone this repository

        git clone https://github.com/ksonj/skltn my_project
        cd my_project

2. Edit the metadata in `skltn/metadata.py`.

3. Then run

        python skltn/generate.py

    This will fill the templates with the data provided in `skltn/metadata.py`,
    remove the original `.git` directory and initialize a fresh git repository.

4. Replace this README and the LICENSE with your own versions


## Tools

The scripts in `tools/` serve the following purposes:

* `docs.sh`: Create the documentation via sphinx
* `test.sh`: Run tests via `pytest` and report with `coverage`.
