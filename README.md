# skltn - A Python Project Template

This project provides a template for Python projects. It uses

* [setuptools](http://pythonhosted.org/setuptools/merge.html) for distribution
* [sphinx](http://sphinx-doc.org/) for documentation
* [flake8](https://pypi.python.org/pypi/flake8) for code style checks
* [tox](https://tox.readthedocs.org/en/latest/) and [nose](https://nose.readthedocs.org/en/latest/) for testing
* [versioneer](https://github.com/warner/python-versioneer) to auto-update the version string

## Setup Instructions

1. Clone this repository

    git clone https://github.com/ksonj/python-project-template my_project
    cd my_project

2. Edit the metadata in `skltn/metadata.py`.

3. Then run

    python skltn/generate.py

This will fill the templates with the data provided in `skltn/metadata.py`,
remove the original `.git` directory and initialize a fresh git repository.

4. Replace this README with your own version


`skltn` is inspired by https://github.com/rocktavious/python-project-template
