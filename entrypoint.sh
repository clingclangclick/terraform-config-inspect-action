#!/bin/sh -l

QUERY="${2:-.}"

echo "::set-output name=config::$(terraform-config-inspect --json "$1" | gojq -cr $QUERY)"
