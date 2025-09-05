# Bytebot (OpenRouter)

Bytebot is an open-source AI desktop agent that gives AI its own computer to autonomously complete complex tasks across applications, websites, and documents.

---

## 📖 About
Bytebot provides a complete virtual desktop environment where AI can interact with real applications, browse websites, process documents, and perform multi-step workflows just like a human would. It consists of four integrated components: a virtual Ubuntu desktop, an AI agent, a web UI for task management, and API endpoints for programmatic control.

## ✨ Features

- **Natural Language Task Processing**: Describe tasks in plain English and watch Bytebot complete them using the virtual desktop
- **Multi-Application Workflows**: Use real desktop applications (browsers, editors, email clients) simultaneously
- **File Upload and Processing**: Upload documents and PDFs for AI analysis and processing
- **Live Desktop View**: Real-time view of Bytebot working on tasks
- **Password Manager Integration**: Automatic authentication with 1Password, Bitwarden, etc.
- **API Access**: Programmatic task creation and desktop control via REST endpoints
- **Multiple AI Provider Support**: Works with OpenRouter, OpenAI, Anthropic Claude, Google Gemini, and more

## 🌟 Stand Outs

- **Autonomous Complex Tasks**: Handle end-to-end processes that span multiple applications and websites
- **Persistent Environment**: Install software and configurations persist for future tasks
- **Document Intelligence**: Read and analyze PDFs, contracts, and complex documents
- **No Browser Limitations**: Use real desktop applications instead of web-only interfaces
- **API Integration**: Programmatically create tasks and interact with the desktop
- **Data Privacy**: Everything runs on your own infrastructure with your API keys

## 🐳 Docker Image Info

- **Registry**: GitHub Container Registry
- **Image**: `ghcr.io/bytebot-ai/bytebot-ui:edge`
- **Architecture**: amd64, arm64
- **Size**: ~2GB (includes full virtual desktop)

## 📁 Volumes
(this part needs to be updated)
- `/data/postgres`: PostgreSQL data persistence for task history and configurations
- Container includes internal volumes for desktop applications and downloaded files

## 🗃️ Defaults

- **Port**: 9992 (Web UI)
- **AI Models**: Configured via liteLLM proxy with OpenRouter integration
- **Database**: PostgreSQL 16 (included)
- **Desktop**: Ubuntu 22.04 with XFCE, Firefox, VS Code

## 📝 Environment

- `BYTEBOT_OPENROUTER_API_KEY`: Required for AI model access via OpenRouter
- All other components use internal networking

## ⚠️ Note

- Requires OpenRouter API key for AI functionality
- Desktop component needs SYS_ADMIN capability for file system access
- Full application startup may take 2-3 minutes on first run

## 💾 Source

Bytebot is open source on [GitHub](https://github.com/bytebot-ai/bytebot) under Apache 2.0 license. Built by Tantl Labs and open source community.
