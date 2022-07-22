#!/bin/sh -l

if [ -n "$GITHUB_WORKSPACE" ]; then
	cd "$GITHUB_WORKSPACE"
fi

QUERY="${2:-.}"

echo "::set-output name=config::$(terraform-config-inspect --json "$1" | gojq -cr $QUERY)"
