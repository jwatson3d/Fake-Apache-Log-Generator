#!/bin/sh

# see https://realpython.com/intro-to-pyenv/

# install latest python 2.7 on local machine
# to find latest use: pyenv install --list | grep " 2\.7"
pyenv install -v 2.7.18

# set local python version (creates .python-version)
pyenv local 2.7.18

# create virtual environment for this project
pyenv virtualenv 2.7.18 apache-fake-log-gen

# activate local environment
pyenv activate apache-fake-log-gen

# install dependencies
pip install -r requirements.txt

# verify setup
python apache-fake-log-gen.py -n 10