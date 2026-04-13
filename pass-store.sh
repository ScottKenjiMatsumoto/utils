#!/bin/bash

ENTRY_NAME=$1  # e.g. github, work/slack

if [ -z "$ENTRY_NAME" ]; then
  echo "Usage: pass-store.sh <entry-name> [value]"
  echo "  If value is omitted, reads from stdin (hidden input)"
  exit 1
fi

if [ -n "$2" ]; then
  VALUE=$2
else
  read -s -p "Enter value: " VALUE
  echo
fi

echo "$VALUE" | pass insert -e "$ENTRY_NAME"
