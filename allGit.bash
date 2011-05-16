#!/usr/bin/env bash

function die() {
  echo $*
  exit 1
}

searchTerms=$1
DIRS=`ls`
#echo "Searching jars $JARS"
for x in $DIRS
do
  test -f $x && continue
  cd $x
  git st
  cd -
done
