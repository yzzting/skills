#!/usr/bin/env bash

set -eu

if [ "${1:-}" = "" ]; then
  echo "usage: $0 <repo-root> [repo-name]" >&2
  exit 1
fi

repo_root="$1"
repo_name="${2:-$(basename "$repo_root")}"
script_dir="$(CDPATH= cd -- "$(dirname "$0")" && pwd)"
skill_root="$(CDPATH= cd -- "$script_dir/.." && pwd)"
template_dir="$skill_root/assets/templates"

escaped_repo_name="$(printf '%s\n' "$repo_name" | sed 's/[\\/&]/\\&/g')"

copy_template() {
  src="$1"
  dest="$2"

  if [ -e "$dest" ]; then
    echo "skip: $dest already exists"
    return 0
  fi

  mkdir -p "$(dirname "$dest")"
  sed "s/{{REPO_NAME}}/$escaped_repo_name/g" "$src" > "$dest"
  echo "created: $dest"
}

mkdir -p \
  "$repo_root/docs/architecture" \
  "$repo_root/docs/exec-plans/active" \
  "$repo_root/docs/exec-plans/completed" \
  "$repo_root/docs/features" \
  "$repo_root/docs/generated" \
  "$repo_root/docs/product-specs" \
  "$repo_root/docs/reference" \
  "$repo_root/docs/reviews" \
  "$repo_root/docs/retrospectives" \
  "$repo_root/docs/spec"

copy_template "$template_dir/AGENTS.template.md" "$repo_root/AGENTS.md"
copy_template "$template_dir/docs-index.template.md" "$repo_root/docs/index.md"
copy_template "$template_dir/doc-governance.template.md" "$repo_root/docs/reference/doc-governance.md"
copy_template "$template_dir/commit-policy.template.md" "$repo_root/docs/reference/commit-policy.md"
copy_template "$template_dir/change-log.template.md" "$repo_root/docs/reference/change-log.md"

echo
echo "Bootstrap complete."
echo "Review the generated files and adapt paths, terminology, and workflow rules to the real repository."
