# -*- coding: utf-8 -*-
"""Project metadata

Information describing the project.
"""
import subprocess


def get_author_detail(arg='name'):
    p = subprocess.Popen(['git', 'config', 'user.{}'.format(arg)],
                         stdout=subprocess.PIPE)
    try:
        out, _ = p.communicate()
    except:
        out = ''
    return out.strip() or None

# The package name, which is also the "UNIX name" for the project.
package = 'my_module'
project = "My Awesome Module"
project_no_spaces = project.replace(' ', '')
version = '0.1.0'
description = 'It does cool things'
authors = [get_author_detail('name') or 'John Doe']
authors_string = ', '.join(authors)
emails = [get_author_detail('email') or 'doe@example.org']
license = 'MIT'
copyright = '2016 ' + authors_string
url = 'http://example.com/'
