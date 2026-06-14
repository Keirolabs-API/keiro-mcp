#!/bin/bash
# Keiro MCP statusline — shows credits remaining and tier
# Called by Claude Code statusLine on every prompt

CREDITS_FILE="$HOME/.claude/.keiro-credits"
TIER_FILE="$HOME/.claude/.keiro-tier"

if [ -f "$CREDITS_FILE" ]; then
  CREDITS=$(cat "$CREDITS_FILE")
else
  CREDITS="?"
fi

if [ -f "$TIER_FILE" ]; then
  TIER=$(cat "$TIER_FILE")
else
  TIER=""
fi

if [ -n "$TIER" ] && [ "$TIER" != "free" ]; then
  echo "⚡ Keiro $TIER · $CREDITS cr"
else
  echo "⚡ Keiro · $CREDITS cr"
fi