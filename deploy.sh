#! /bin/sh

rm -rf output
mkdir output
cd output
git init
git checkout -b gh-pages
git remote add origin git@github.com:schickling-stiftung/schickling-stiftung.github.io.git
git pull origin gh-pages
git rm -r *
cd ..
nanoc compile
cd output
git add .
git commit -am "Deploy"
git push origin gh-pages
