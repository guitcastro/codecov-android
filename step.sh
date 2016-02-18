#!/bin/bash

set -e

curl https://bootstrap.pypa.io/get-pip.py | python
PYTHONUSERBASE=./ pip install --user --ignore-installed codecov
PYTHONUSERBASE=./ ./bin/codecov --token=$CODECOV_TOKEN