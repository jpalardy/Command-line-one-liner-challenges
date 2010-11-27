#!/bin/sh

convert() {
  iconv -f UTF-8 -t ASCII//TRANSLIT "$@"
}

convert input.txt > actual.txt

${DIFF:-diff -q} actual.txt expected.txt

