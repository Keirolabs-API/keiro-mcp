---
name: keiro-research
description: >
  Deep web research via Keiro v2 Search+Content API. Searches the web AND
  scrapes clean markdown from top results. Includes TLDR, tags, entities.
  Use when you need full page content, not just snippets. Trigger: "research
  X", "deep dive into X", "find details about X", "read about X".
license: MIT
---

# Keiro Research

Search + scrape in one call. Returns full markdown content from top results with TLDR, tags, and entities.

## When to use

- Deep research on a topic (need full article content, not just snippets)
- Comparing multiple sources
- Extracting structured data from search results
- When you need the actual page content, not just titles and URLs

## How to use

Call the `mcp__keiro-v2__web_research` tool with:

- **query** (required): Your research query
- **maxResults** (optional, default 3, max 5): Number of pages to scrape
- **mode** (optional: "medium" | "deep"): Extraction depth. Default "medium". Use "deep" for JS-heavy pages.
- **objective** (optional): Natural language description of what to extract
- **max_chars** (optional, 1000-50000, default 7000): Max chars per source
- **json_schema** (optional): JSON Schema for structured extraction (medium/deep only)

## When NOT to use

- Just need titles and URLs? → Use `/keiro-search` (1 credit vs 3)
- Need an answer, not raw content? → Use `/keiro-answer`
- Have a specific URL? → Use `/keiro-extract`

## Cost

3 credits per call (1.5 on paid plans).