#!/usr/bin/env python2.7
# -*- coding: utf-8 -*-
from __future__ import print_function
from string import Template
import os
import subprocess
import shutil


def main():
    # If not in the project root directory, go to it.
    project_root = os.path.dirname(os.path.dirname(
        os.path.realpath(__file__)))
    os.chdir(project_root)

    import metadata

    # The title of the main documentation should match the project name in the
    # metadata. Under it should be a matching underline of equal signs. Produce
    # it for the template.
    project_underline = len(metadata.project) * '='

    # Substitute values into template files and produce their real
    # counterparts.
    for dirpath, dirnames, filenames in os.walk('.'):
        # Don't recurse into git directory.
        if '.git' in dirnames:
            dirnames.remove('.git')

        for filename in filenames:
            # Ignore all non-template files.
            # Using splitext cuts off the last extension.
            root, extension = os.path.splitext(filename)
            if extension != '.tpl':
                continue

            # Substitute values and write the new file.
            tpl_path = os.path.join(dirpath, filename)
            real_path = os.path.join(dirpath, root)

            with open(tpl_path) as tpl_file:
                template = Template(tpl_file.read())
            print('Substituting', tpl_path, '->', real_path)
            with open(real_path, 'w') as real_file:
                real_file.write(template.safe_substitute(
                    project_underline=project_underline,
                    **metadata.__dict__))

            # Remove the template file.
            os.remove(tpl_path)

    print('Renaming the package: my_module ->', metadata.package)
    os.rename('my_module', metadata.package)

    print("Revising `LICENSE' file...")
    # Open file for reading and writing.
    with open('LICENSE', 'r+') as license_file:
        # Strip off the first two lines.
        new_contents = ''.join(license_file.readlines()[2:])
        license_file.seek(0)
        print(new_contents, file=license_file)

    git_revision = subprocess.check_output(
        ['git', 'rev-parse', 'HEAD']).rstrip()
    print('Dropping PPT version cookie (revision {0})...'.format(git_revision))
    # Append the commit hash of the current revision to the file.
    with open('.ppt-version', 'a') as ppt_version_cookie_file:
        print(git_revision, file=ppt_version_cookie_file)

    print(
        'To finish project setup:\n'
        '1. Change the `classifiers` keyword in `setup.py` as necessary.\n'
        '2. Change the license in `setup.py` and replace the generated'
        ' `LICENSE` file\n'
        '   with the one of your choice. If you would like to use the MIT'
        ' license, no change is necessary.\n'
        '3. Change `README.md` to your own text.\n'
        )
    print('Removing template directory...')
    shutil.rmtree('skltn')

    print('Removing git directory...')
    shutil.rmtree('.git')

    print('Create new git repository')
    os.system('git init')
    os.system('git add .')
    os.system("git commit -m 'initial commit'")


if __name__ == '__main__':
    main()
