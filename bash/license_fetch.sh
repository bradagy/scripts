#!/usr/bin/env python3


import os
import shutil
import glob


# Script to copy the contents of the LICENSE.md file located in my github directory
# to the current directory I am working in.
# This will prevent me from constantly going to the MIT License
# website page to repeatedly copy the license.

# Current directory is stored as a variable and stays the same.
current_directory = os.getcwd()

os.chdir('/home/bradagy/Desktop/github')

shutil.copyfile('LICENSE.md', '/home/bradagy/Desktop/github/LICENSE_copy.md')

# Moving the LICENSE.md file to the current working directory.
shutil.move('/home/bradagy/Desktop/github/LICENSE_copy.md', current_directory)

# Changing back to current working directory and renaming the LICENSE_copy.md
# file to LICENSE.md
os.chdir(current_directory)
os.rename('LICENSE_copy.md', 'LICENSE.md')

# Listing all of the visible files while excluding hidden files.
if 'LICENSE.md' in glob.glob('*'):
    print('The LICENSE.md file has been generated.')
