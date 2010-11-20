#!/bin/sh

convert() {
  echo $(sort "$@" | uniq -d | wc -l) / $(sort -u "$@" | wc -l) | bc -l
}

convert input1.txt input2.txt > actual.txt

${DIFF:-diff -q} actual.txt expected.txt

