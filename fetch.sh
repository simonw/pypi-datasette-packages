#!/bin/bash
mkdir -p packages
while read package; do
  curl -s "https://pypi.org/pypi/$package/json" | jq > "packages/$package.json"
  sleep 1
done < packages.txt
