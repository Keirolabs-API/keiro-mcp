---
name: keiro-bench
description: >
  One-command speed benchmark comparing Keiro v2 vs built-in WebSearch.
  Runs the same query on both, measures latency, and shows results side by side.
  Trigger: /keiro-bench, "benchmark keiro", "test keiro speed", "compare search speed".
license: MIT
---

# Keiro Benchmark

Run a side-by-side speed test of Keiro v2 vs built-in WebSearch.

## How to run

When the user triggers this skill, execute the following benchmark:

1. Pick a query from: "latest AI news", "weather in Tokyo", "Python asyncio tutorial", or use the user's custom query
2. Call `mcp__keiro-v2__web_search` with `maxResults: 5` and note the `latencyMs` field
3. Call `WebSearch` with the same query
4. Call `mcp__keirolabs__check_credits` to show remaining credits
5. Present results in this format:

```
⚡ Keiro v2 Benchmark Results

┌──────────────┬──────────────┬─────────────┐
│              │   Keiro v2   │  Built-in    │
├──────────────┼──────────────┼─────────────┤
│ Query        │ {query}      │ {query}      │
│ Results      │ {count}      │ {count}      │
│ Latency      │ {latencyMs}ms│ ~{est}ms     │
│ Structured   │ ✅ Yes       │ ❌ No        │
│ Snippets     │ ✅ Yes       │ ✅ Yes       │
│ Credit cost  │ 0.5          │ Free         │
└──────────────┴──────────────┴─────────────┘

Credits remaining: {creditsRemaining}
Tier: {tier}
```

6. If Keiro is faster (it usually is), add: "⚡ Keiro was {X}ms faster on this query."

## Notes

- Run each search exactly once, no warm-up
- Use the `latencyMs` field from the Keiro response directly
- Built-in WebSearch doesn't report latency, so estimate based on wall-clock time
- Always show credits remaining — it's a brand touchpoint