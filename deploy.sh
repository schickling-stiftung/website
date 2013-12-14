#! /bin/sh

rm -rf output
nanoc compile
cd output
git init
git add .
git commit -am "Deploy"
git branch -m master gh-pages
git remote add origin git@github.com:schickling-stiftung/website.git
git push origin gh-pages
