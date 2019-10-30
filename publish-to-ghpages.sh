#!/bin/sh

DIR=$(dirname "$0")

cd $DIR

if [[ $(git status -s) ]]
then
    echo "The working directory is dirty. Please commit any pending changes."
    exit 1;
fi

echo "Deleting old publication"
rm -rf public
mkdir public
git worktree prune
rm -rf .git/worktrees/public/

echo "Checking out gh-pages branch into public"
git fetch origin gh-pages
git worktree add -B gh-pages public origin/gh-pages

echo "Removing existing files"
rm -rf public/*

echo "Generating site /en"
cd en/
hugo
mv public ../public/en
cd ..

echo "Generating site /zh"
cd zh/
hugo
mv public ../public/zh
cd ..

echo "Generating index.html"
cp index.html public/
cp public/en/favicon.ico public/favicon.ico

echo "Generating CNAME"
printf "kaleidochain.io" > public/CNAME

echo "Updating gh-pages branch"
#cd public && git add --all && git status && git commit -m "Publishing to gh-pages by publish-to-ghpages.sh" && git push

