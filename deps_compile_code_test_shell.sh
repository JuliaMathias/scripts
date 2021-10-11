#! /bin/sh

mix deps.get
mix compile
code .
make test-shell
