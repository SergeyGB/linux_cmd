#!/bin/bash
set -x
if [ ! -d "./bin" ]
then
    python3 -m venv .
fi

source bin/activate
