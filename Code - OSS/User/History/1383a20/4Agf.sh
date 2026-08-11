#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Ensure we use local filesystem thumbnails
export GIO_USE_VFS=local

exec python3 "$SCRIPT_DIR/thumbgen.py" "$@"
