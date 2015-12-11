'''
The stuff libreary
'''


class Stuff(object):
    '''
    One piece of Stuff.
    Usage:
    >>> s = Stuff('abc')
    >>> s.do()
    'abc'
    '''
    def __init__(self, x):
        '''
        Args:
            x(int): The thing to make stuff from
        '''
        self.x = x

    def do(self):
        return self.x
