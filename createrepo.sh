#!/bin/bash

git init

git branch -M main

git add .

git commit -m "First commit"

REPO_NAME=$(pwd | grep -o '[^/]*$')

gh create-repo $REPO_NAME

git remote add origin git@github.com:trifo13/$REPO_NAME.git

git push -u origin main
