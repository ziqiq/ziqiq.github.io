#!/bin/bash

for file in `git ls-files '*.md'`; do
    echo ${file%.*}
    def_files=($(dirname ${file})/*.def)
    if [ ! -f ${def_files} ]; then
        def_files=""
    fi
    pandoc ${def_files} ${file} -f markdown --mathjax --template=./pandoc.tpl -o ${file%.*}.html
done
