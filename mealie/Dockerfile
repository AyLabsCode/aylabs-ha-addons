ARG BUILD_FROM
FROM ${BUILD_FROM}

# Store Mealie data in HA's /data directory (auto-provided by Supervisor)
ENV DATA_DIR=/data

# Wrapper that fixes /data permissions before Mealie's own init
COPY run.sh /ha-run.sh
RUN chmod +x /ha-run.sh

ENTRYPOINT ["/ha-run.sh"]
