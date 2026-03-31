#!/bin/bash
# Check if all .md and .mdx files have a corresponding *_zh_TW version
missing=0
total=0
while read -r file; do
  ((total++))
  ext="${file##*.}"
  base="${file%.*}"
  zh_file="${base}_zh_TW.${ext}"
  if [ ! -f "$zh_file" ]; then
    echo "Missing: $zh_file"
    ((missing++))
  fi
done < <(./scripts/list_md_files.sh)

echo "--------------------------------"
echo "Total original files: $total"
echo "Missing translations: $missing"
if [ $missing -eq 0 ]; then
  echo "All files translated!"
  exit 0
else
  exit 1
fi
