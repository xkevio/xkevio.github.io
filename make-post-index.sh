#!/bin/bash
set -eu

{
  for i in ./posts/*.typ; do
    metadata=$(typst eval "query(<${i/#"./posts/"}_meta>).first().value" --in "$i") 
    jq -cn --arg key "$i" --argjson value "$metadata" '{($key): $value}'
  done
} | jq -s 'add // {}' > post-index.json
