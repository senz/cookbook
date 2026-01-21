#!/usr/bin/env bash
set -euo pipefail

tools_dir="/workspaces/cookbook/tools"
mkdir -p "${tools_dir}"
cd "${tools_dir}"
creator_path="${tools_dir}/create_cookbook.py"
if [ ! -f "${creator_path}" ]; then
  wget -q -O "${creator_path}" https://raw.githubusercontent.com/cooklang/cookbook-creator/main/scripts/create_cookbook.py
fi
if command -v cook >/dev/null 2>&1; then
  cook --version
else
  echo "cook not found in PATH" >&2
  exit 1
fi

cd /workspaces/cookbook
if command -v pre-commit >/dev/null 2>&1; then
  pre-commit --version
else
  pip install pre-commit
fi

if [ -f "/workspaces/cookbook/.pre-commit-config.yaml" ]; then
  pre-commit install --install-hooks
fi
