# 2026 Epic AI MegaJam

Jam page: https://itch.io/jam/2026-epic-ai-megajam
Official Rules (v. 2026-10-22, snapshot in `rules/`): https://epicgames.box.com/s/a7xcgl07fqoieeb99sjtd3juhj4agc4z

This repo is being prepared before the jam. Until **2026-11-12 00:00 ET** it holds only
what Rule 7(h) allows ahead of time: AI tools, agent configs, MCP settings, prompt
libraries and scripts. **No game content (gameplay, levels, art) until then.**
Epic may ask to see this repo's version-control history to check compliance.

Agents start at [AGENTS.md](AGENTS.md). Rules digest: [RULES.md](RULES.md). Targets: [GOALS.md](GOALS.md).

## Submitting

Run [JAMDAY.md](JAMDAY.md) top to bottom.

```sh
tools/devlog.sh  > devlog.md    # Glass Box dev log, grouped by day (ET)
tools/declare.sh > declare.md   # pre-jam files to declare (Rule 7h)
```

## Dates (ET is UTC-5 after Nov 1)

| What | When |
|---|---|
| In-person SF registration (Eventbrite) | Nov 1, 7 AM PST / 10 AM EST |
| Kickoff livestream + theme | Nov 11, 11 AM PST / 2 PM EST |
| Jam starts | Nov 12, 12:00 AM EST (05:00 UTC) |
| **Submission deadline** (late = disqualified) | **Nov 15, 5:59 PM PST / 8:59 PM EST** |
| Winners | by Jan 29, 2027; 72 h to respond to the notification |

## Do-not-get-disqualified checklist

- [ ] Every member: 18+, active Epic account that is not Cabined, resident outside the
      Restricted Jurisdictions (incl. Brazil, Italy, Russia, Turkey)
- [x] Choose **one** of UE or UEFN, not both: **UE** (see [GOALS.md](GOALS.md))
- [ ] UE: packaged dev build (Win/macOS/Android/iOS), zip `TeamName_GameName.zip` < 1 GB
      (or butler). Unpackaged projects are not accepted.
- [ ] UEFN: a **private version code** created before the deadline (not a live or playtest code)
- [ ] Runs without any additional software
- [ ] Clearly uses the theme
- [ ] Custom gameplay beyond the starter templates, and not a reskinned tutorial
- [ ] Video: 30–60 s, **1920x1080 or higher**, gameplay in the first 5 s
- [ ] Everything in English (in-game text, audio, video, entry info)
- [ ] Rated Teen or below. No trademarks except the UE / Developed-in-Fortnite logo. No third-party IP.
- [ ] Sourced assets (Fab etc.) are licensed and listed. AI-generated content does not count as sourced.
- [ ] Anything made before Nov 12 (prompts, scripts, assets) is declared
- [ ] Entry form: team name, every member's full name and Epic account email, one **Team Owner**
- [ ] A human submits it. An agent must not.
- [ ] One submission per team

## Prizes: what can stack

Each submission wins at most **one main-category prize + one modifier prize** (Rule 13).
A team of 2+ is automatically eligible for Best Team ($5k). Glass Box ($2.5k) needs a dev
log **submitted with the entry, during the contest period** (Rule 10).

| Modifier | Applies to |
|---|---|
| Best Team $5k | teams of 2+ |
| Render Royalty $2.5k | UE only |
| Pocket Powerhouse $2.5k | best mobile game, one UE and one UEFN winner |
| Glass Box $2.5k | best dev log |
| Walkie-Talkie $2.5k | UEFN only, LLM NPCs built with UEFN conversations |
| Solo Driver | n/a (we're a team) |

Development Continuation Grants (up to $50k) are by invitation, separate from prizes.
