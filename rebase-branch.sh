#! /bin/bash
echo "Updating branch in current repo."
git stash
git rebase origin
git stash pop
