#!/bin/sh -l

MODULE="${1:-.}"
QUERY="${2:-.}"

echo "::set-output name=config::$(terraform-config-inspect --json "$MODULE" | gojq -cr "$QUERY")"
