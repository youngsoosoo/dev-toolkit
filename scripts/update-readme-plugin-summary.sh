#!/usr/bin/env bash
set -euo pipefail

README_PATH="${README_PATH:-README.md}"
START_MARKER="<!-- plugin-summary:start -->"
END_MARKER="<!-- plugin-summary:end -->"

if [ ! -f "$README_PATH" ]; then
  echo "README file not found: $README_PATH" >&2
  exit 1
fi

if ! grep -q "$START_MARKER" "$README_PATH"; then
  echo "Start marker not found in $README_PATH: $START_MARKER" >&2
  exit 1
fi

if ! grep -q "$END_MARKER" "$README_PATH"; then
  echo "End marker not found in $README_PATH: $END_MARKER" >&2
  exit 1
fi

summary_table="$(bash scripts/generate-plugin-summary.sh --table-only)"
tmp_file="$(mktemp)"

awk \
  -v start="$START_MARKER" \
  -v end="$END_MARKER" \
  -v table="$summary_table" '
    $0 == start {
      print $0
      print table
      in_block = 1
      next
    }
    $0 == end {
      in_block = 0
      print $0
      next
    }
    !in_block {
      print $0
    }
  ' "$README_PATH" > "$tmp_file"

mv "$tmp_file" "$README_PATH"
