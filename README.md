# discord-gpt-bot

[![CI](https://github.com/m4rv4x/discord-gpt-bot/actions/workflows/ci.yml/badge.svg)](https://github.com/m4rv4x/discord-gpt-bot/actions/workflows/ci.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

> Discord bot powered by OpenAI — multiple personas, Dockerized, easy to self-host.

## ✨ Features

- 🧠 OpenAI chat (configurable model + max tokens)
- 🎭 Multiple personas via `personas.json`
- 🔐 Admin tag + user blacklist
- 🐳 Docker-ready (`discord-gpt.dockerfile`)

## 🚀 Quick Start

```bash
git clone https://github.com/m4rv4x/discord-gpt-bot.git
cd discord-gpt-bot

cp config.example.json config.json
# Edit config.json: openai_token, discord_token, persona, admin_tag

npm install
node index.js
```

## 🐳 Docker

```bash
docker build -t discord-gpt-bot -f discord-gpt.dockerfile .
docker run -v $(pwd)/config.json:/app/config.json discord-gpt-bot
```

## ⚙️ Configuration

See `config.example.json`:

| Key | Description |
|-----|-------------|
| `openai_token` | OpenAI API key |
| `discord_token` | Discord bot token |
| `persona` | Which persona from `personas.json` to use |
| `admin_tag` | Discord tag of the bot owner |
| `blacklist_tags` | Users the bot will ignore |
| `activity` | Bot activity status |
| `maxTokens` | Max tokens per response |

## 📄 License

[MIT](LICENSE) © [marvax](https://github.com/m4rv4x)
