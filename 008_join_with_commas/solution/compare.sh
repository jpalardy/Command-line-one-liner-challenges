#!/bin/sh

convert() {
  paste -d, -s "$@"
}

convert input.txt > actual.txt

${DIFF:-diff -q} actual.txt expected.txt

