#!/bin/sh

pwd=$(pwd)
PYTHON_VERSION=$(python -V 2>&1)

if [ -z "${VIRTUAL_ENV}" ]; then  # check for venv env var
  if [ -d "${pwd}/.venv" ]; then  # check for .venv folder
    echo "${PYTHON_VERSION} virtual environment already exists at ${pwd}/.venv"
  else
    echo "Setting up a new ${PYTHON_VERSION} virtual environment at ${pwd}/.venv..."
    python -m pip install -U pip uv  # install uv on system interpreter
    python -m uv venv .venv  # use that uv to create venv
  fi
else
  echo "${PYTHON_VERSION} virtual environment is already activated in ${pwd}"
fi