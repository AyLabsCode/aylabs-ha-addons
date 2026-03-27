#!/bin/sh
# =============================================================================
# Bonap — Home Assistant addon entrypoint
#
# Reads options from /data/options.json (written by HA Supervisor),
# injects them as window.__ENV__ into the static HTML, and starts nginx.
# =============================================================================
set -e

OPTIONS_FILE=/data/options.json

# ---------------------------------------------------------------------------
# Read options from Home Assistant
# ---------------------------------------------------------------------------
MEALIE_URL="$(jq -r '.mealie_url' "${OPTIONS_FILE}")"
MEALIE_TOKEN="$(jq -r '.mealie_token' "${OPTIONS_FILE}")"

echo "[Bonap] Starting..."
echo "[Bonap] Mealie URL: ${MEALIE_URL}"

# ---------------------------------------------------------------------------
# Inject runtime configuration into the SPA via window.__ENV__
# This file is loaded by index.html before the Vite bundle.
# ---------------------------------------------------------------------------
cat > /usr/share/nginx/html/env-config.js <<EOF
window.__ENV__ = {
  VITE_MEALIE_URL: "${MEALIE_URL}",
  VITE_MEALIE_TOKEN: "${MEALIE_TOKEN}"
};
EOF

# ---------------------------------------------------------------------------
# Configure the nginx /api proxy: use MEALIE_URL as the internal target.
# ---------------------------------------------------------------------------
export MEALIE_INTERNAL_URL="${MEALIE_URL%/}"

envsubst '${MEALIE_INTERNAL_URL}' \
  < /etc/nginx/templates/default.conf.template \
  > /etc/nginx/http.d/default.conf

# ---------------------------------------------------------------------------
# Start nginx in the foreground
# ---------------------------------------------------------------------------
echo "[Bonap] Available on port 3000."
exec nginx -g "daemon off;"
