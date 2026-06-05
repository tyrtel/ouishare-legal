#!/usr/bin/env bash
set -e

cd "$(dirname "$0")"

MSG="${1:-Update site $(date '+%Y-%m-%d %H:%M')}"

git add -A
if git diff --cached --quiet; then
  echo "Nothing to publish — no changes staged."
  exit 0
fi

git commit -m "$MSG"
git push origin main
echo "Published to https://tyrtel.github.io/ouishare-legal/"
