from ._version import get_versions


__version__ = get_versions()['version']
del get_versions


from .stuff import Stuff


def some_func(x):
    '''
    A function that does stuff

    Args:
        x(int): The thing to do stuff on

    Returns:
        Stuff
    '''
    return Stuff(x)
from .stuff import Stuff


def some_func(x):
    '''
    A function that does stuff

    Args:
        x(int): The thing to do stuff on

    Returns:
        Stuff
    '''
    return Stuff(x)

