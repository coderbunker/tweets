#!/bin/bash

venv_dir="venv"

install() {
    virtualenv --python python3 ${venv_dir}
    pip_update >> /dev/null
}
pip_update() {
    source venv/bin/activate
    pip install -r requirements.txt
}
init_env() {
    mkdir -p data
    mkdir -p logs
    export PYTHONPATH="`pwd`:`pwd`/tools:$PYTHONPATH"
    source venv/bin/activate
}

[ -d ${venv_dir} ] || install
[ "$1" = "-f" ] && pip_update
init_env
