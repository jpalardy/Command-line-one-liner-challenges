#!/bin/sh

convert() {
  grep -i -o -w the "$@" | wc -l
}

convert input.txt > actual.txt

${DIFF:-diff -w -q} actual.txt expected.txt

