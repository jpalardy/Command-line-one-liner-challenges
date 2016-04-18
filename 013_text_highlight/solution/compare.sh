#!/bin/sh

# these solutions almost work
#   grep -E '(\bthe\b|$)' --color=always "$@"
#   ack -w the --passthru --color "$@"
# it looks fine visually but inserts an invisble
# escape sequence at the end of the line.

convert() {
  sed 's/\bthe\b/\x1b[1;31m&\x1b[0m/g' "$@"
}

convert input.txt > actual.txt

${DIFF:-diff -q} actual.txt expected.txt

