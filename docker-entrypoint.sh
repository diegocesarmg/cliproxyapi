#!/bin/sh
set -e

# Write config from env var (base64-encoded) or use example
if [ -n "$CONFIG_BASE64" ]; then
  echo "$CONFIG_BASE64" | base64 -d > /CLIProxyAPI/config.yaml
  echo "[entrypoint] config.yaml written from CONFIG_BASE64"
elif [ ! -f /CLIProxyAPI/config.yaml ]; then
  cp /CLIProxyAPI/config.example.yaml /CLIProxyAPI/config.yaml
  echo "[entrypoint] using config.example.yaml"
fi

exec "$@"
