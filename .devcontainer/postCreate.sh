#!/usr/bin/env bash
set -euo pipefail

tools_dir="/workspaces/cookbook/tools"
mkdir -p "${tools_dir}"
cd "${tools_dir}"
wget -q -O create_cookbook.py https://raw.githubusercontent.com/cooklang/cookbook-creator/main/scripts/create_cookbook.py
if command -v cook >/dev/null 2>&1; then
  cook --version
else
  echo "cook not found in PATH" >&2
  exit 1
fi