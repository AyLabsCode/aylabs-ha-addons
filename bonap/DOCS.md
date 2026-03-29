# Bonap — Home Assistant Addon

Bonap is an ergonomic front-end for [Mealie](https://mealie.io), a self-hosted recipe manager. This addon runs Bonap as a Home Assistant service so you can access it directly from your HA sidebar.

## Prerequisites

- A running Mealie instance (accessible from your Home Assistant host)
- A Mealie API token — generate one in Mealie under **Profile → API Tokens**

## Configuration

| Option | Required | Description |
|---|---|---|
| `mealie_url` | Yes | URL of your Mealie instance, as seen from your browser. Example: `http://192.168.1.100:9000` |
| `mealie_token` | Yes | Mealie Bearer token (Profile → API Tokens) |
| `llm_provider` | No | AI provider: `anthropic`, `openai`, `google`, or `ollama`. Shared across all devices. |
| `llm_api_key` | No | API key for the AI provider. Shared across all devices — no need to re-enter on each browser. |
| `llm_model` | No | AI model to use (e.g. `claude-sonnet-4-6`). Leave empty to use the in-app selector. |
| `llm_ollama_url` | No | Ollama instance URL. Only needed if `llm_provider` is `ollama`. |

### Example

```yaml
mealie_url: "http://192.168.1.100:9000"
mealie_token: "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9..."
llm_provider: "anthropic"
llm_api_key: "sk-ant-..."
llm_model: "claude-sonnet-4-6"
```

## Accessing Bonap

After starting the addon:

- Click **OPEN WEB UI** in the addon page, or
- Click the **Bonap** entry in the Home Assistant sidebar (ingress)

## Notes

- Bonap is a **pure front-end** — it reads and writes to your Mealie instance but does not store any recipe data itself.
- The Mealie API token is only used to authenticate requests from Bonap to Mealie. It is never sent to any external service.
- The `/api` path is proxied server-side by nginx inside the container — the browser never makes cross-origin requests directly to Mealie.

## Support

- GitHub: <https://github.com/AymericLeFeyer/bonap>
- Issues: <https://github.com/AymericLeFeyer/bonap/issues>
