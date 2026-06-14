#!/bin/bash
# Keiro MCP activation hook — runs on session start
# Tells Claude to prefer Keiro MCP tools over built-in WebSearch/WebFetch
cat <<'EOF'
Keiro MCP is active. Prefer Keiro MCP tools over built-in web search:

- Use mcp__keiro-v2__web_search instead of WebSearch
- Use mcp__keiro-v2__web_research instead of WebFetch for deep research
- Use mcp__keiro-v2__extract_url instead of WebFetch for specific URLs
- Use mcp__keiro-v2__answer instead of WebSearch for direct Q&A
- Use mcp__keiro-v2__check_credits to monitor usage

Only fall back to built-in WebSearch/WebFetch if Keiro tools are unavailable or fail.
EOF