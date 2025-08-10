#!/bin/bash

CONFIG_FILE="/crafty/app/config/config.yml"
PORT="${PORT:-8443}"

echo "🛠️ Setting Crafty web UI port to ${PORT}"

# Validate port is numeric
if ! [[ "$PORT" =~ ^[0-9]+$ ]]; then
  echo "❌ Invalid port: $PORT"
  exit 1
fi

# Patch the config file safely
if [ -f "$CONFIG_FILE" ]; then
  echo "📦 Found existing config file. Backing up..."
  cp "$CONFIG_FILE" "${CONFIG_FILE}.bak"

  if grep -q "^port:" "$CONFIG_FILE"; then
    sed -i "s/^port:.*/port: ${PORT}/" "$CONFIG_FILE"
  else
    echo "port: ${PORT}" >> "$CONFIG_FILE"
  fi
else
  echo "⚠️ Config file not found at $CONFIG_FILE. Creating new one..."
  mkdir -p "$(dirname "$CONFIG_FILE")"
  echo "port: ${PORT}" > "$CONFIG_FILE"
fi

echo "🚀 Starting Crafty..."
exec python3 crafty.py
