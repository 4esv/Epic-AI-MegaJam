#!/usr/bin/env bash
# Repo guards. CI runs these on every push and PR; run locally before pushing.
# Usage: tools/check.sh [pr]   (pr mode also checks PR_TITLE and PR_BODY)
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"

JAM_START=2026-11-12T05:00:00Z # Nov 12, 00:00 ET
OWN=Jam                        # Content/Jam/ is ours; every other Content/<dir> is sourced
NOW=${NOW:-$(date -u +%Y-%m-%dT%H:%M:%SZ)}

fail=0
err() { printf '✗ %s\n' "$*" >&2; fail=1; }

# Rule 7(h): no game content before the jam.
if [[ $NOW < $JAM_START ]]; then
  while read -r f; do err "pre-jam game content: $f"; done < <(git ls-files Content Source)
fi

# Binaries must be LFS pointers, or they bloat history for good.
lfs=$(git ls-files | git check-attr --stdin filter | awk -F': ' '$3 == "lfs" { print $1 }')
if [[ -n $lfs ]]; then
  while read -r size path; do
    ((size > 200)) && err "not an LFS pointer: $path"
  done < <(git ls-files -s | awk -F'\t' 'NR == FNR { l[$0]; next } $2 in l { split($1, m, " "); print m[2], $2 }' \
    <(printf '%s\n' "$lfs") - | git cat-file --batch-check='%(objectsize) %(rest)')
fi

# Rule 15(c): every sourced folder has an ASSETS.md row.
while IFS=/ read -r _ dir rest; do
  if [[ -z $rest ]]; then
    err "loose file in Content/, move it under Content/$OWN/: Content/$dir"
  elif [[ $dir != "$OWN" ]] && ! grep -qF "| \`$dir\` |" ASSETS.md; then
    err "sourced folder not in ASSETS.md: Content/$dir/"
  fi
done < <(git ls-files Content | awk -F/ '{ print $1 "/" $2 "/" (NF > 2 ? "x" : "") }' | sort -u)

if [[ ${1:-} == pr ]]; then
  [[ ${PR_TITLE:-} =~ ^(feat|fix|docs|refactor|test|chore|perf)(\([a-z0-9-]+\))?:\ .+ ]] ||
    err "PR title must be 'type(scope): description': ${PR_TITLE:-}"
  proof=$(tr -d '\r' <<<"${PR_BODY:-}" | sed 's/<!--.*-->//g' |
    awk '/^## / { on = ($0 == "## Proof"); next } on' | tr -d '[:space:]')
  [[ -n $proof ]] || err "PR has an empty Proof section"
fi

((fail)) && exit 1
echo "✓ checks passed"
