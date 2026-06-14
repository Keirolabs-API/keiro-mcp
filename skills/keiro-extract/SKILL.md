---
name: keiro-extract
description: >
  Extract clean content from any URL via Keiro v2. Returns markdown, and
  optionally structured data via JSON schema. Use when you have a specific
  URL and need its content. Trigger: "extract from URL", "read this page",
  "scrape this URL", "get content from this link".
license: MIT
---

# Keiro Extract

Extract clean markdown from any URL. Supports custom JSON schemas for structured output.

## When to use

- You have a specific URL and need its content
- Scraping a known page (product, article, listing)
- Structured data extraction (prices, titles, dates, etc.)
- Converting a web page to clean markdown for RAG

## How to use

Call the `mcp__keiro-v2__extract_url` tool with:

- **url** (required): The URL to extract from
- **mode** (optional: "light" | "medium" | "deep"): Extraction depth. Default "medium". Use "deep" for JS-rendered pages.
- **objective** (optional): What to extract from the page
- **json_schema** (optional): JSON Schema for structured extraction (deep/medium only)
- **expand_content** (optional, default false): Get full page content, not just excerpt
- **max_chars** (optional, 1000-50000, default 10000): Max characters to extract

## When NOT to use

- Don't know the URL yet? → Use `/keiro-search` to find it first
- Need multiple pages on a topic? → Use `/keiro-research`

## Cost

3 credits per call (full price, no discount).