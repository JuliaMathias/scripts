#!/bin/bash

if [[ -z "$1" ]]; then
    echo "USAGE: $(basename $0) [name]"
    exit 1
fi

elixir -e "require IEx.Helpers; IEx.Helpers.h($1)"