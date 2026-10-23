#!/usr/bin/env bash
# Prints the pre-jam declaration: every file in main as of the jam start (Rule 7h).
# Usage: tools/declare.sh
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"

JAM_START=2026-11-12T05:00:00Z # keep in sync with tools/check.sh

base=$(git rev-list -1 --before="$JAM_START" main)
printf 'Prepared before the jam (commit %s, %s):\n\n' \
  "$(git rev-parse --short "$base")" "$(git log -1 --format=%cs "$base")"
git ls-tree -r --name-only "$base" | sed 's/^/- /'
