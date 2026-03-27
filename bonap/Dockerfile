# =============================================================================
# Bonap — Home Assistant Addon
#
# Build strategy:
#   - Stage 1 (builder): builds the Vite static app from the Bonap source.
#     The build context must be the REPOSITORY ROOT, not this directory.
#     When building locally, run from the repo root:
#       docker build -f ha-addon/bonap/Dockerfile -t bonap-ha .
#
#   - Stage 2 (runner): uses the HA community base image (Alpine + bashio +
#     s6-overlay). Installs nginx, copies the static build, and uses run.sh
#     to read HA options (via bashio) and inject them at container startup.
#
# The Dockerfile uses ARG BUILD_FROM so that the HA supervisor can substitute
# the correct architecture-specific base image at build time (see build.yaml).
# =============================================================================

# Global ARG — must be declared before the first FROM to be usable in a FROM instruction
ARG BUILD_FROM=alpine:3.20

# Stage 1 — Build Vite app
# Force amd64: Node 20 doesn't support armv7, and the output (static files) is arch-agnostic.
FROM --platform=linux/amd64 node:20-alpine AS builder

WORKDIR /app

# Copy dependency manifests first (better layer caching)
COPY package.json package-lock.json ./
RUN npm ci

# Copy source — context must be the repository root
COPY . .

# Build Vite — VITE_* values are injected at runtime via window.__ENV__.
# Do NOT pass real secrets here; the image must remain generic.
RUN npm run build

# =============================================================================
# Stage 2 — Serve with HA base image (provides bashio + s6-overlay)
# =============================================================================
FROM ${BUILD_FROM}

# Install nginx and envsubst (gettext package provides envsubst)
RUN apk add --no-cache nginx gettext jq

# Static build output from stage 1
COPY --from=builder /app/dist /usr/share/nginx/html

# nginx config template — ${MEALIE_INTERNAL_URL} is substituted at startup
COPY ha-addon/bonap/nginx.conf /etc/nginx/templates/default.conf.template

# Addon entrypoint: reads bashio options → writes env-config.js → starts nginx
COPY ha-addon/bonap/run.sh /run.sh
RUN chmod +x /run.sh

EXPOSE 3000

CMD ["/run.sh"]
