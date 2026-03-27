# Mealie

> **Unofficial addon** — This addon is maintained by [AyLabs](https://github.com/AyLabsCode) to simplify installation of Mealie on Home Assistant. It is not affiliated with or endorsed by the [Mealie project](https://github.com/mealie-recipes/mealie).

[Mealie](https://mealie.io) is a self-hosted recipe manager and meal planner with a REST API backend and a Vue frontend.

## First launch

On first start, Mealie creates a default admin account:

- **Email**: `changeme@example.com`
- **Password**: `MyPassword`

Change these immediately after logging in.

## Access

Mealie is accessible at `http://<your-ha-ip>:9000`.

## Data

All Mealie data is stored in the addon's `/data` directory, which is persisted by Home Assistant across restarts and updates.

## Updates

To update Mealie, change the addon version in the repository — the new image will be pulled automatically on reinstall.
