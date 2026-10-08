#!/usr/bin/env bash
set -euo pipefail

PORT="${PORT:-3000}"
ROOT="/workspace"

if command -v ss >/dev/null 2>&1; then
  if ss -tlnH "sport = :${PORT}" 2>/dev/null | grep -q .; then
    echo "Static server already listening on port ${PORT}"
    exit 0
  fi
fi

exec python3 -m http.server "$PORT" --bind 0.0.0.0 --directory "$ROOT"
