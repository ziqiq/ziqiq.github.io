#!/bin/bash

for file in `git ls-files '*.md'`; do
    echo ${file%.*}
    pandoc ${file} --mathjax --template=./pandoc.tpl -o ${file%.*}.html
done
