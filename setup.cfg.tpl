[flake8]
exit-zero=true
statistics=true
show-pep8=true
exclude=docs/

[pytest]
testpaths = tests

[build_sphinx]
all_files = 1
build-dir = docs/build
source-dir = docs/source

[upload_sphinx]
upload-dir = docs/build/html

[egg_info]
tag_build = 
tag_date = 0
tag_svn_revision = 0

[versioneer]
VCS = git
style = pep440
versionfile_source = ${package}/_version.py
versionfile_build = ${package}/_version.py
tag_prefix =
parentdir_prefix = ${package}-
