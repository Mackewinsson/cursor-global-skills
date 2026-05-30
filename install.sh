#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_DIR="${CURSOR_SKILLS_DIR:-$HOME/.cursor/skills}"
UNINSTALL=false

if [[ "${1:-}" == "--uninstall" ]]; then
  UNINSTALL=true
fi

mkdir -p "$SKILLS_DIR"

link_skill() {
  local name="$1"
  local src="$REPO_DIR/$name"
  local dest="$SKILLS_DIR/$name"

  if [[ ! -f "$src/SKILL.md" ]]; then
    return 0
  fi

  if $UNINSTALL; then
    if [[ -L "$dest" ]] && [[ "$(readlink "$dest")" == "$src" ]]; then
      rm "$dest"
      echo "Removed $dest"
    fi
    return 0
  fi

  ln -sfn "$src" "$dest"
  echo "Linked $name -> $dest"
}

# Skip repo meta files; link every directory with SKILL.md
for dir in "$REPO_DIR"/*/; do
  name="$(basename "$dir")"
  case "$name" in
    .git) continue ;;
  esac
  link_skill "$name"
done

if $UNINSTALL; then
  echo "Done. Global skills from this repo removed."
else
  echo ""
  echo "Installed to $SKILLS_DIR"
  echo "Restart Cursor or start a new Agent chat to use skills."
fi
