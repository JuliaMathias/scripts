#! /bin/sh

git checkout master
git pull
mix deps.get
mix compile
code .