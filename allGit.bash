#!/usr/bin/env bash

function die() {
  echo $*
  exit 1
}

#red='\e[0;31m'
#NC='\e[0m' # No Color

searchTerms=$1
DIRS=`ls`
#echo "Searching jars $JARS"
for x in $DIRS
do
  test -f $x && continue
  cd $x
  echo "Checking git status for $x"
  git status | grep -v "Changes not staged for commit" | grep -v "On branch master" | grep -v "nothing added to commit but untracked files present" | grep -v "to update what will be committed" | grep -v "to discard changes in working directory" | grep -v "include in what will be committed" | grep -v "Untracked files" | grep -v "working directory clean" | grep -v "to unstage" | grep -v "Changes to be committed" 
  cd - &> /dev/null
done
