#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$REPO_DIR"

echo "Pulling latest skills..."
git pull --ff-only

echo ""
"$REPO_DIR/install.sh"

echo ""
echo "Global skills updated. Restart Cursor or open a new Agent chat if a skill does not appear."
