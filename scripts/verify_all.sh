#!/bin/bash
# Final validation script to ensure all .md and .mdx files have a corresponding *_zh_TW version
# and to check if internal links in Chinese files point to Chinese versions.

missing_translations=0
broken_links=0
total_files=0

echo "Checking translation completion..."
while read -r file; do
  ((total_files++))
  ext="${file##*.}"
  base="${file%.*}"
  zh_file="${base}_zh_TW.${ext}"
  if [ ! -f "$zh_file" ]; then
    echo "[MISSING] $zh_file"
    ((missing_translations++))
  else
    # Check for internal links in the translated file that don't point to _zh_TW versions
    # This is a basic grep for .md) and .mdx) links
    links_to_fix=$(grep -oE '\[[^]]+\]\([^)]+\.(md|mdx)\)' "$zh_file" | grep -v "_zh_TW\.(md|mdx))")
    if [ ! -z "$links_to_fix" ]; then
      echo "[LINK ISSUE] $zh_file has links that might need to be pointed to _zh_TW versions:"
      echo "$links_to_fix"
      ((broken_links++))
    fi
  fi
done < <(./scripts/list_md_files.sh)

echo "--------------------------------"
echo "Summary:"
echo "Total original files: $total_files"
echo "Missing translations: $missing_translations"
echo "Files with possible link issues: $broken_links"

if [ $missing_translations -eq 0 ] && [ $broken_links -eq 0 ]; then
  echo "Validation PASSED!"
  exit 0
else
  echo "Validation FAILED!"
  exit 1
fi
