#!/bin/sh

convert() {
  awk '{sum+=$1} END {print sum}' "$@"
}

convert input.txt > actual.txt

${DIFF:-diff -q} actual.txt expected.txt

