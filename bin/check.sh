#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
skills_root="$repo_root/skills"
failures=0
count=0

report_error() {
  printf 'error: %s\n' "$1" >&2
  failures=$((failures + 1))
}

if [[ ! -d "$skills_root" ]]; then
  report_error "missing skills directory"
else
  while IFS= read -r skill_dir; do
    count=$((count + 1))
    skill_name="$(basename "$skill_dir")"
    skill_file="$skill_dir/SKILL.md"

    if [[ ! "$skill_name" =~ ^[a-z0-9]+(-[a-z0-9]+)*$ ]]; then
      report_error "$skill_name: directory name must be kebab-case"
    fi

    if [[ ! -f "$skill_file" ]]; then
      report_error "$skill_name: missing SKILL.md"
      continue
    fi

    declared_name="$(awk '
      NR == 1 && $0 != "---" { exit }
      NR > 1 && $0 == "---" { exit }
      /^name:[[:space:]]*/ {
        sub(/^name:[[:space:]]*/, "")
        gsub(/^['\''"]|['\''"]$/, "")
        print
      }
    ' "$skill_file")"

    if [[ "$declared_name" != "$skill_name" ]]; then
      report_error "$skill_name: frontmatter name is '$declared_name'"
    fi

    if ! awk '
      NR == 1 && $0 != "---" { exit 1 }
      NR > 1 && $0 == "---" { exit found ? 0 : 1 }
      /^description:[[:space:]]*[^[:space:]].*/ { found = 1 }
      END { if (!found) exit 1 }
    ' "$skill_file"; then
      report_error "$skill_name: missing non-empty description"
    fi

    if grep -En 'TODO|TBD|\[Replace|placeholder' "$skill_file" >/dev/null; then
      report_error "$skill_name: unfinished scaffold text found"
    fi
  done < <(find "$skills_root" -mindepth 1 -maxdepth 1 -type d | sort)
fi

if [[ "$count" -eq 0 ]]; then
  report_error "no skills found"
fi

if [[ "$failures" -ne 0 ]]; then
  printf '%d validation error(s)\n' "$failures" >&2
  exit 1
fi

printf 'ok: validated %d skills\n' "$count"
