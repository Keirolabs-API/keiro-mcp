---
name: keiro-search
description: >
  Fast web search via Keiro v2 API. Use for quick factual lookups, finding
  URLs, getting snippets. Returns titles, URLs, and snippets from multiple
  engines in ~1s. Trigger: when the user wants to search the web, find
  something online, or look up a topic quickly.
license: MIT
---

# Keiro Search

Fast multi-engine web search. First valid response wins — sub-second results.

## When to use

- Quick factual lookups ("what is X", "who founded Y")
- Finding URLs for a topic
- Getting search snippets without full page content
- When speed matters more than depth

## How to use

Call the `mcp__keiro-v2__web_search` tool with:

- **query** (required): Your search query
- **maxResults** (optional, default 20, max 35): Number of results
- **country** (optional, ISO-3166-1 alpha-2): Country code for localized results

## When NOT to use

- Need full page content? → Use `/keiro-research` (Search+Content endpoint)
- Need a cited answer? → Use `/keiro-answer` (Answer endpoint)
- Need data from a specific URL? → Use `/keiro-extract` (Extract endpoint)

## Cost

1 credit per call (0.5 on paid plans).