#!/bin/false

echo "Execute:" $0

if [ -z "$OUT_DIR" ]; then
    OUT_DIR=.
else
    for file in `find . -type f '(' -name '*.png' -o -name '*.gif' ')'`; do
        mkdir -p ${OUT_DIR}/$(dirname ${file})
        cp $file ${OUT_DIR}/${file}
    done
fi

echo "Output: " $OUT_DIR

for file in `find -type f -name '*.md'`; do
    dir=$(dirname ${file})
    file=${file%.*}
    echo "Pandoc: " $file

    def_files=$(echo ${dir}/*.def)
    if [ ! -f $def_files ]; then
        def_files=""
    fi

    mkdir -p ${OUT_DIR}/${dir}
    pandoc ${def_files} ${file}.md -f markdown --mathjax --lua-filter=./promote-headers.lua --template=./pandoc.html -o ${OUT_DIR}/${file}.html
done

