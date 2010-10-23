#!/bin/sh

convert() {
  paste -d, "$@"
}

convert input1.txt input2.txt > actual.txt

${DIFF:-diff -q} actual.txt expected.txt

