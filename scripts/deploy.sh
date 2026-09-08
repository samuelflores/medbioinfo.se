#!/usr/bin/env bash
set -euo pipefail

#TARGET="${1:-}"
#TARGET=arnee@pcons1.scilifelab.se:/server/var/www/medbioinfo.se/public/
TARGET=sam@pcons1.scilifelab.se:/server/var/www/medbioinfo.se/public/

if [[ -z "$TARGET" ]]; then
  echo "Usage: ./scripts/deploy.sh user@host:/path/"
  exit 1
fi

hugo
rsync -av --delete public/ "$TARGET"
