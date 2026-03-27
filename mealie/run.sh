#!/bin/bash
# Fix /data permissions so Mealie (uid 911) can write to it
# HA Supervisor mounts /data as root — this must run before Mealie's own init
chown -R "${PUID:-911}:${PGID:-911}" /data

exec /app/run.sh "$@"
