#!/bin/bash -e

expect () { [ "$1" = "$2" ] || { echo "actual: $1 expected: $2"; exit 1; }; }

expect_path_variable () { [[ ":$PATH:" == *":$1:"* ]] || { echo "expected to have '$1' in '$PATH'"; exit 1; }; }

