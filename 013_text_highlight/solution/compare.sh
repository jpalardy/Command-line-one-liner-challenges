#!/bin/sh

# this grep solution almost works
#   grep -E '(\bthe\b|$)' --color=always "$@"
# it looks fine visually but inserts an invisble
# escape sequence at the end of the line.

convert() {
  ack -w the --passthru --color "$@"
}

convert input.txt > actual.txt

${DIFF:-diff -q} actual.txt expected.txt

