#!/bin/sh -l

PATH="${1:-.}"
QUERY="${2:-.}"

cd /github/workspace

echo "::set-output name=config::$(terraform-config-inspect --json "$1" | gojq -cr $QUERY)"
