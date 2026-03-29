# AyLabs — Home Assistant Addons

This repository contains [Home Assistant](https://www.home-assistant.io/) addons maintained by [AyLabs](https://github.com/AyLabsCode).

## Installation

1. In Home Assistant, go to **Settings → Add-ons → Add-on Store**
2. Click the **three-dot menu** (top right) and select **Repositories**
3. Paste the following URL and click **Add**:
   ```
   https://github.com/AyLabsCode/aylabs-ha-addons
   ```
4. Refresh the page — addons will appear in the store

## Addons

| Addon | Description |
|---|---|
| [Bonap](bonap/) | Ergonomic front-end for [Mealie](https://mealie.io) — recipes, meal planning, shopping list and AI suggestions |
| [Mealie](mealie/) | Self-hosted recipe manager and meal planner *(unofficial addon)* |

## Bonap — Configuration

| Option | Required | Description |
|---|---|---|
| `mealie_url` | Yes | URL of your Mealie instance, as seen from your browser |
| `mealie_token` | Yes | Mealie Bearer token (Profile → API Tokens) |
| `llm_provider` | No | AI provider: `anthropic`, `openai`, `google`, or `ollama` |
| `llm_api_key` | No | API key for the AI provider — shared across all devices automatically |
| `llm_model` | No | AI model (e.g. `claude-sonnet-4-6`) — leave empty to use the in-app selector |
| `llm_ollama_url` | No | Ollama instance URL (only if `llm_provider` is `ollama`) |

Setting the LLM options here means you only configure your AI credentials once — they apply to every browser/device that opens Bonap.
