#!/bin/bash -e

if [ $# -lt 2 ]; then
  echo "Usage: $0 [prefix] [en|ja]"
  exit 1
fi

patch -o awesome-cv-patched.cls awesome-cv.cls < sectionstyle.patch

for section in $(find sections -type d -maxdepth 1 -mindepth 1); do
  pandoc ${section}/content_${2}.yaml -s -o ${section}/out.tex --wrap=none --template=${section}/template.tex
done

pandoc config.yaml -s -o out.tex --template resume.tex
xelatex -jobname=${1}_${2} out.tex
