#! /bin/sh

rm -rf output
mkdir output
cd output
git init
git remote add origin https://ulrikemeyer@github.com/schickling-stiftung/schickling-stiftung.github.io.git
git pull origin master
git rm -r *
cd ..
nanoc compile
cd output
git add .
git commit -am "Deploy"
git push origin master
