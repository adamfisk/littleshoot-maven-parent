#!/usr/bin/env bash

function die() {
  echo $*
  exit 1
}

DIRS=`ls`
#echo "Searching jars $JARS"
for x in $DIRS
do
  test -f $x && continue
  cd $x
  git add .gitignore;git commit -a -m "Added common maven parent";git push origin master
  cd -
done
