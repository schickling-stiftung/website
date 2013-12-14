#! /bin/sh

rm -rf output
mkdir output
cd output
git init
git checkout -b gh-pages
git remote add origin git@github.com:schickling-stiftung/website.git
git pull origin gh-pages
cd ..
nanoc compile
cd output
git add .
git commit -am "Deploy"
git push origin gh-pages
