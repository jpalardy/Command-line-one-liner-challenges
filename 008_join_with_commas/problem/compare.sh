#!/bin/sh

convert() {
  cat "$@"
}

convert input.txt > actual.txt

${DIFF:-diff -q} actual.txt expected.txt

