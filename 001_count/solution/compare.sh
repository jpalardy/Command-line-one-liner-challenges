#!/bin/sh

convert() {
  sort "$@" | uniq -c | awk '{print $2, $1}'
}

convert input.txt > actual.txt

${DIFF:-diff -q} actual.txt expected.txt

