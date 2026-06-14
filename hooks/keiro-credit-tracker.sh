#!/bin/bash
# Keiro credit tracker — runs after every prompt
# Reads the last known credits from check_credits and updates the statusline file
# This is a best-effort tracker; real credit count comes from the API

CREDITS_FILE="$HOME/.claude/.keiro-credits"
TIER_FILE="$HOME/.claude/.keiro-tier"

# Parse credits from the last tool result if available
# The statusline reads from these files
# Actual values are updated by the activate hook on session start

if [ ! -f "$CREDITS_FILE" ]; then
  echo "—" > "$CREDITS_FILE"
fi

if [ ! -f "$TIER_FILE" ]; then
  echo "free" > "$TIER_FILE"
fi