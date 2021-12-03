#! /bin/sh

git checkout master
git pull
git fetch --prune
git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d
git branch --no-merged | egrep -v "(^\*|master|dev)" | xargs git branch -D
