#!/bin/bash
# List all .md and .mdx files, excluding PROGRESS.md and already translated *_zh_TW files
find . -type f \( -name "*.md" -o -name "*.mdx" \) \
  ! -path "*/node_modules/*" \
  ! -path "*/.git/*" \
  ! -name "PROGRESS.md" \
  ! -name "*_zh_TW.md" \
  ! -name "*_zh_TW.mdx" \
  | sed 's|^\./||' | sort
