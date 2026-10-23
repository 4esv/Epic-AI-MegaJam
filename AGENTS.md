# AGENTS.md

Unreal Engine game for the 2026 Epic AI MegaJam, built in public.
Hard constraints: [RULES.md](RULES.md). Targets: [GOALS.md](GOALS.md).

## Map

| Path | What |
|---|---|
| `Content/Jam/` | Everything we make, including AI-generated assets |
| `Content/<Pack>/` | Sourced assets (Fab etc.), one row each in [ASSETS.md](ASSETS.md) |
| `Source/` | C++ |
| `Config/`, `Plugins/` | Engine config, MCP and other plugins |
| `tools/check.sh` | Repo guards; CI runs them, run locally before pushing |
| `tools/devlog.sh` | Compiles the public dev log from merged PRs |
| `rules/` | Official Rules PDF |

## Work

- One unit = one GitHub issue. Assign yourself before starting; skip issues already assigned.
- Branch `<issue>-<slug>` from `main`. One PR per issue, squash-merged, title `type(scope): description`.
- Decide the proof before you start (test, screenshot, packaged build, log). It goes in the PR's
  Proof section; no proof, no merge.
- Take the unit that gets the game closest to shippable. Playable beats pretty beats clever.
- Stay inside the issue. Note anything else you find as a new issue instead of fixing it.

## Don't collide

- `.uasset` and `.umap` are binary, can't be merged, and are LFS-lockable. Run
  `git lfs lock <path>` before editing, `git lfs locks` to check. Locked by someone else: don't touch it.
  Unlock after merge.
- Levels use World Partition with One File Per Actor, so locks are per actor, not per map.
- Prefer creating new assets over editing shared ones.
- One agent per editor instance over MCP.
- Rebase on `main` before opening a PR. Never force-push `main`.

## Glass Box (automatic if you follow the template)

- Every PR fills in **Devlog**: 1–3 lines on what changed and how (agent, model, tool, prompt,
  what broke). `tools/devlog.sh` turns these into the dev log.
- Adding a sourced asset? Add its ASSETS.md row in the same PR. CI blocks it otherwise.
- AI-generated assets go in `Content/Jam/`. Name the tool and model in the Devlog line.

## Setup

`git lfs install` once per machine. Before 2026-11-12 05:00 UTC, CI rejects anything in
`Content/` or `Source/` (Rule 7h).
