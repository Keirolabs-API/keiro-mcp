---
name: keiro-answer
description: >
  Direct cited answers via Keiro v2 Answer API. Asks a question, searches
  the web, synthesizes an answer with sources. Use when you need a concise
  answer with citations, not raw search results. Trigger: "answer this",
  "what is X", "tell me about X with sources".
license: MIT
---

# Keiro Answer

Ask a question, get a cited answer. Searches the web and synthesizes a response with sources.

## When to use

- Need a direct answer with citations
- Fact-checking with sources
- When the user wants an answer, not a list of links
- Research questions where you need the AI to synthesize across sources

## How to use

Call the `mcp__keiro-v2__answer` tool with:

- **query** (required): Your question
- **maxResults** (optional, default 5, max 20): Number of sources to consider

## When NOT to use

- Need full page content? → Use `/keiro-research`
- Just need URLs/snippets? → Use `/keiro-search` (1 credit vs 5)
- Have a specific URL? → Use `/keiro-extract`

## Cost

5 credits per call (full price, no discount).