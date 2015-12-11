from ._version import get_versions


__version__ = get_versions()['version']
__project__ = '${package}'

del get_versions
