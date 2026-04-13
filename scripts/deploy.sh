#!/usr/bin/env bash
set -euo pipefail

TARGET="${1:-}"
if [[ -z "$TARGET" ]]; then
  echo "Usage: ./scripts/deploy.sh user@host:/path/"
  exit 1
fi

hugo
rsync -av --delete public/ "$TARGET"
