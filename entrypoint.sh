#!/bin/sh -l

PATH="${1:-.}"
QUERY="${2:-.}"

echo "::set-output name=config::$(terraform-config-inspect --json "$PATH" | gojq -cr "$QUERY")"
