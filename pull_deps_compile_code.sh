#! /bin/sh

git pull
mix deps.get
mix compile
code-insiders .
