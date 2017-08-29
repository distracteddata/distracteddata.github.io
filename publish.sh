#!/bin/bash


cd Notebooks
arr=(*.ipynb)
cd ..
for f in "${arr[@]}"; do
   # Chop off the extension
   filename=$(basename "$f")
   extension="${filename##*.}"
   filename="${filename%.*}"

   # Convert the Notebook to HTML
   jupyter-nbconvert --to html Notebooks/"$filename".ipynb
   # Move to the Html directory
   mv Notebooks/"$filename".html  Html/"$filename".html

   # Convert the Notebook to Markdown
   jupyter-nbconvert --to markdown Notebooks/"$filename".ipynb
   # Move to the Markdown directory
   mv Notebooks/"$filename".md  Markdown/"$filename".md

done

cp Html/index.html index.html

# Push the updates to gh-pages
mkdir -p /tmp/workspace
cp -r * /tmp/workspace/
git add -A .
git commit -m "Updates"
git checkout -B gh-pages
cp -r /tmp/workspace/* .
git add -A .
git commit -m "Updates"
git push origin master gh-pages
git checkout master
rm -rf /tmp/workspace
