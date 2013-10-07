#!/usr/bin/env bash

function die() {
  echo $*
  exit 1
}

ARGS=1  # One arg to script expected.

if [ $# -ne "$ARGS" ]
then
    die "$0: Received $# args...commit comment required"
fi

comment=$1

DIRS=`ls`
for x in $DIRS
do
  test -f $x && continue
  cd $x
  echo "About to pull in $x"
  git pull
  echo "About to add all in $x"
  git add .gitignore;git commit -a -m "$comment";git push origin master
  cd -
done
