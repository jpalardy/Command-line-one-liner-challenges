#!/bin/sh

convert() {
  awk '{print length}' "$@" | sort -nu | tail -n1
}

convert input.txt > actual.txt

${DIFF:-diff -q} actual.txt expected.txt

