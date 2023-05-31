#! /bin/sh

mix deps.get
mix compile
code-insiders .
make test-shell
