# ${project} - ${description}
By ${authors_details_string}

## Setting up development environment
Make sure you have *[Tox][]* installed.


### Create a virtualenv:
  `tox -e devenv --notest`

This creates a virtual environment in `./devenv` with the package installed in _develop_ mode.
It also installs testing tools.

The environment can be activate by sourcing the activation script:
  `source devenv/bin/activate`

Run tests with [Pytest][]:
  `py.test`


## Testing
Run tests in a clean environment with code coverage:
  `tox`


## Distribution
Build documentation:
  `tox -e docs`

Build wheel:
  `tox -e build`


## Typechecking
Run *[Mypy][]* type checker:
  `tox -e typecheck`

---

[Tox]: https://tox.readthedocs.io/en/latest/#
[Pytest]: https://docs.pytest.org/en/latest/
[Mypy]: http://mypy-lang.org/
