#!/bin/sh

convert() {
  grep . "$@"
}

convert input.txt > actual.txt

${DIFF:-diff -q} actual.txt expected.txt

