#!/bin/sh

convert() {
  cat "$@"
}

convert input.txt > actual.txt

${DIFF:-diff -w -q} actual.txt expected.txt

