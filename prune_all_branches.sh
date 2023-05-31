#! /bin/sh

git checkout main
git pull
git fetch --prune
git branch --merged | egrep -v "(^\*|main|dev)" | xargs git branch -d
git branch --no-merged | egrep -v "(^\*|main|dev)" | xargs git branch -D
