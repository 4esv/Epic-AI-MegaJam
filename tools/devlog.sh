#!/usr/bin/env bash
# Compiles the Glass Box dev log from the "## Devlog" sections of PRs squash-merged to main.
# Usage: tools/devlog.sh [since] > devlog.md   (since: anything git log --since accepts)
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"

TZ=America/New_York git log main --first-parent --reverse ${1:+--since="$1"} \
  --date=format-local:'%a %b %d' --format='%ad%x1f%s%x1f%b%x1e' |
  awk 'BEGIN { RS = "\036"; FS = "\037" }
  NF >= 3 {
    sub(/^\n+/, "", $1)
    n = split($3, line, "\n"); text = ""; on = 0
    for (i = 1; i <= n; i++) {
      l = line[i]; sub(/\r$/, "", l); gsub(/<!--.*-->/, "", l); sub(/^[-*] +/, "", l)
      if (l ~ /^## /) { on = (l == "## Devlog"); continue }
      if (on && l !~ /[^[:space:]]/ && text != "") on = 0 # first paragraph only
      if (on && l ~ /[^[:space:]]/) text = text (text ? " " : "") l
    }
    if (text == "") next
    if ($1 != day) { printf "%s## %s\n\n", (day ? "\n" : ""), $1; day = $1 }
    printf "- **%s**: %s\n", $2, text
  }'
