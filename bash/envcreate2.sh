#!/bin/bash

cd /home/bradagy/Desktop/github

# The -n flag does not output a newline after the statement below.
echo -n "Enter the name of the new directory: "

read filename

# Creating the parent directory from the user input.
mkdir -p $filename

sleep 1
echo -n "The $filename directory was created."

# Copying the LICENSE.md file into the root directory of the project.
cp /home/bradagy/Desktop/github/LICENSE.md $filename/

cd $filename
touch README.md

# Creating a git repositiory inisde of the root directory.
git init

sleep 1

mkdir $filename
cd $filename
touch __init__.py
chmod +x __init__.py
touch $filename.py
chmod +x $filename.py

python3 -m venv venv
cd ..
touch .gitignore
echo "The project directory has been created."

# If a tmux session is currently running, do not create a nested one.
# If a tmux session is not running, create a new one.
if [[ "$TERM" =~ "screen".* ]]; then
    echo "We are in TMUX."
else
    echo "Creating a tmux session."
    tmux attach -t base || tmux new -s base
fi
