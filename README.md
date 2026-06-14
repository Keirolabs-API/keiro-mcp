# Keiro MCP

Production web search API for AI agents — as a Claude Code plugin.

**One-command install:**

```
/plugin marketplace add keirolabs/keiro-mcp
/plugin install keiro-mcp@keiro-mcp
```

That's it. You'll be prompted for your Keiro API key (free at [keirolabs.cloud](https://keirolabs.cloud)). All 12 MCP tools are available immediately.

## What you get

| Tool | Endpoint | Credits | What it does |
|------|----------|---------|-------------|
| `web_search` | /v2/search/fast | 1 (0.5 paid) | Multi-engine search, sub-second |
| `web_research` | /v2/search/content | 3 (1.5 paid) | Search + full markdown from top results |
| `extract_url` | /v2/extract | 3 | Clean markdown from any URL |
| `answer` | /v2/answer | 5 | Cited answer with sources |
| `list_endpoints` | — | 0 | List available API endpoints |
| `get_endpoint` | — | 0 | Get endpoint details & pricing |
| `get_rate_limits` | — | 0 | Check rate limits |
| `get_auth` | — | 0 | Auth documentation |
| `generate_code` | — | 0 | cURL/Python/JS code snippets |
| `get_mcp_tools` | — | 0 | List MCP tools |
| `suggest_schema` | — | 0 | JSON schema suggestions |
| `check_credits` | — | 0 | Check credit balance |

## Skills

- `/keiro-search` — Fast web search (snippets only)
- `/keiro-research` — Deep research (full page content)
- `/keiro-extract` — Extract from a specific URL
- `/keiro-answer` — Direct cited answer

## Manual setup (alternative)

If you prefer not to use the plugin system, add to `~/.claude/settings.json`:

```json
{
  "mcpServers": {
    "keiro-v2": {
      "type": "streamable-http",
      "url": "https://kierolabs.space/mcp/api",
      "headers": {
        "Authorization": "Bearer keiro_YOUR_API_KEY",
        "Accept": "application/json, text/event-stream"
      }
    }
  }
}
```

## Free tier

50 free credits on signup. Fast search = 1 credit each = 50 free searches.

## Support

- Discord: https://discord.gg/Smv4t4txjS
- Status: https://status.keirolabs.cloud
- Docs: https://keirolabs.cloud