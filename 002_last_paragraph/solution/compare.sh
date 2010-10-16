#!/bin/sh

convert() {
  tac "$@" | sed '/^$/Q' | tac
}

convert input.txt > actual.txt

${DIFF:-diff -q} actual.txt expected.txt

