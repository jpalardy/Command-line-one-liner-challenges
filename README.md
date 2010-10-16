
There are 4 files to know about:
* input.txt    -- The input file.
* compare.sh   -- What you need to run. Some implementation is missing.
* actual.txt   -- The output of the transformed input.txt. Created by running compare.sh.
* expected.txt -- What input.txt needs to be transformed into.

Each directory contains two subdirectories: problem and solution. The only
difference between problem and solution directories is the content of
compare.sh file.

In the problem directory, you need to implement the convert function inside
compare.sh. This is always the same, a passthrough function:

  convert() {
    cat "$@"
  }

You are aiming for a one-liner. It should be as functional as possible: no
variables, temporary files, or side-effects.

Invoke compare.sh

  > ./compare.sh

There is still work to do if you get:

  Files actual.txt and expected.txt differ

If you are debugging, you can change the diff command to whatever suits you:

  > DIFF=vimdiff ./compare.sh

Or:

  > DIFF="diff -u" ./compare.sh

