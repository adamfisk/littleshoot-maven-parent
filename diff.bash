#!/usr/bin/env bash

function die() {
  echo $*
  exit 1
}

DIRS=`ls`
for x in $DIRS
do
  test -f $x && continue
  cd $x
  git diff 
  cd -
done
