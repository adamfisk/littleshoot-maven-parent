#!/usr/bin/env bash

function die() {
  echo $*
  exit 1
}

DIRS=`ls`
for x in $DIRS
do
  test -f $x && continue
  echo $x | grep target && continue 
  echo $x | grep ".git" && continue 
  cd $x
  git pull 
  cd -
done
