#!/bin/sh

convert() {
  awk '!x[$0]++' "$@"
}

convert input.txt > actual.txt

${DIFF:-diff -q} actual.txt expected.txt

