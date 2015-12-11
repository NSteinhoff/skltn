[flake8]
exit-zero=true
statistics=true
show-pep8=true

[nosetests]
verbosity=1
debug=0
detailed-errors=1
with-xunit=1
with-xcoverage=1
xunit-file=test_output/output.xml
cover-package=${package}
cover-erase=1
cover-html=1
cover-html-dir=coverage_output/
xcoverage-file=coverage_output/coverage.xml

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
