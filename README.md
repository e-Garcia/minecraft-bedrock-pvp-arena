# Minecraft Bedrock PvP Arena

A **Minecraft Bedrock Edition add-on** that provides a **skill-based PvP arena** with **kits on respawn**, **randomized arena spawns**, and a **teams-ready architecture**.

Designed for:
- Player-hosted Bedrock worlds (PC & mobile)
- 6–10 players (smooth PvP)
- Automatic resource pack download for joining friends

> ⚠️ **Status:** Active development — early versions focus on FFA PvP foundations.

## Planned Features

- ⚔️ Kit on every respawn (iron-tier, skill-focused)
- 🎯 Random arena spawn points
- 🏟️ Arena-friendly (Colosseum-style layouts)
- 👥 Free-for-all by default
- 🧩 Teams support scaffolded for future versions
- 📦 Auto-download resource pack on join
- 🖥️ Works on Windows host and mobile hosts (iPad/iOS/Android)

## Roadmap
- v0.1 — FFA PvP foundations (kits, spawns, arena support)
- v0.2 — Team toggles & friendly-fire rules
- v0.3 — Round system & scoreboard UI
- v0.4 — PvE "beasts" mode inside the arena

## Project Goals

- Keep PvP **skill-based**, not gear-based
- Be easy to extend (teams, rounds, PvE modes)


## Installation

1. Download the latest `.mcaddon` from **Releases**
2. Double-click to import into Minecraft Bedrock
3. Edit your world:
    - Activate the **Behavior Pack**
    - Activate the **Resource Pack**
    - Enable **Require players to accept resource packs**
4. Join the world and start PvP


## Add-on Structure

This repository now includes a minimal Behavior Pack (BP) and Resource Pack (RP) scaffold suitable for Bedrock development.

- `BP/` — Behavior Pack with:
  - `manifest.json` (pack header + data module + RP dependency)
  - `functions/init.mcfunction` (scoreboard init)
  - `functions/tick.mcfunction` (tick entrypoint; runs init once, stub for future logic)
  - `functions/tick.json` (Bedrock tick runner)

- `RP/` — Resource Pack with:
  - `manifest.json` (pack header + resources module)
  - `texts/en_US.lang` (pack name/description)

> Bedrock auto-runs the `tick` function via `BP/functions/tick.json` (not Java-style function tags).

> The UUIDs in `BP/manifest.json` and `RP/manifest.json` are stable identifiers.
> Do **not** change them after publishing, or worlds may break and updates may not apply cleanly.

The Behavior Pack depends on the Resource Pack via `dependencies` in `BP/manifest.json`.
