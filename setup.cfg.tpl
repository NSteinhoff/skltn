[flake8]
exit-zero=true
statistics=true
show-pep8=true
exclude=docs/

[tool:pytest]
testpaths = tests

[coverage:run]
omit =
    ${package}/_version.py
source =
    ${package}
sort =
    Miss

[coverage:report]
show_missing = true

[build_sphinx]
all_files = 1
build-dir = docs/build
source-dir = docs/source

[upload_sphinx]
upload-dir = docs/build/html

[versioneer]
VCS = git
style = pep440
versionfile_source = ${package}/_version.py
versionfile_build = ${package}/_version.py
tag_prefix =
parentdir_prefix = ${package}-
