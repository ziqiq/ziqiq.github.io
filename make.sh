#!/bin/false

if [ -z "$out_dir" ]; then
    out_dir=.
else
    for file in `find . -type f '(' -name '*.png' -o -name '*.gif' ')'`; do
        mkdir -p ${out_dir}/$(dirname ${file})
        cp $file ${out_dir}/${file}
    done
fi

for file in `find -type f -name '*.md'`; do
    dir=$(dirname ${file})
    file=${file%.*}
    echo $file

    def_files=$(echo ${dir}/*.def)
    if [ ! -f $def_files ]; then
        def_files=""
    fi

    mkdir -p ${out_dir}/${dir}
    pandoc ${def_files} ${file}.md -f markdown --mathjax --template=./pandoc.tpl -o ${out_dir}/${file}.html
done

