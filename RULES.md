# Rules, condensed

Source: Official Rules, 2026-10-22, in `rules/`. If this file and the PDF disagree, the PDF
wins. Section numbers in brackets point to the PDF. Our path is Unreal Engine, so UEFN-only
rules are left out.

## Hard rules: breaking one disqualifies us

**Timing**
- Contest runs Nov 12, 12:00 AM ET to **Nov 15, 8:59 PM ET** (5:59 PM PT). Late = disqualified. [4]
- Before Nov 12, only these are allowed: AI tools, agent configs, MCP settings, prompt
  libraries, scripts. **All game content (gameplay, levels, art) is made during the jam.** [7h]
- Epic may ask for these prep materials **and our version-control history**. Keep git honest:
  no force-pushes that rewrite history, no backdated commits. [7h]
- Declare anything made before Nov 12 in the submission. [itch page]

**Entry**
- One submission per team. The same person appearing on two submissions risks disqualification. [2]
- Team of 1–5. Submit every member's full name and Epic account email, plus the Team Owner. [1c]
- A human submits it, never an agent or script. [17]
- Every member: 18+, active non-Cabined Epic account, resident outside the Restricted
  Jurisdictions (incl. Brazil, Italy, Russia, Turkey). [5]

**The build**
- A packaged UE build playable on Windows 10/11, macOS, Android or iOS. Unpackaged project = rejected. [1b]
- Zip named `TeamName_GameName.zip`, under 1 GB (or upload with butler), on our own itch
  account, then submitted to the jam. [itch page]
- Runs without any additional software: no local LLM runtime, no extra installer. [7f]
- Must show the Contest Theme. [7g]
- Custom gameplay that goes beyond Epic's starter templates. [7e]
- Not an obvious extension of an official UE tutorial (reused project/levels/assets with minor changes). [7d]

**The video**
- 30–60 s, recorded gameplay, **1920x1080 or higher**. [1e, 7c]

**Content**
- Everything in English: in-game text, audio, video, entry info. [7i]
- Teen-rated (13+). No nudity, illegal activity or substances, animal cruelty, hate, or
  disparagement of Epic or anyone else. [8]
- No third-party IP. **No trademarks or logos** except the Unreal Engine logo used per
  unrealengine.com/branding. That includes real brands appearing in AI-generated art. [8, 15d]
- Sourced assets (Fab, packs, free sounds) need a license we actually hold and must be listed
  in the submission. They aren't scored. AI-generated content does not count as sourced. [15c]
- **This repo is public.** Most asset licenses (Fab's included) allow sharing source files only
  with collaborators or through a private repo. Committing licensed packs here may count as
  redistribution, which is an IP breach and a disqualification risk. Check the license before
  committing any sourced asset. [15a, fab.com/cla]
- If Epic believes something infringes copyright, the entry is disqualified. [15g]

## Scoring [9]

Each criterion is scored 1–5: Ambition and Innovation, Theme, Fun Factor, Gameplay, Visuals,
Level Design, Audio. **Ties are re-scored with Fun Factor counted double.** Disclosing how
much AI we used doesn't change the score either way.

## Prizes [10, 13]

- Max **one main prize + one modifier prize** per submission.
- Glass Box: the dev log must be **submitted with the entry, during the contest period**.
- Prizes are paid to the Team Owner via Hyperwallet. The owner splits them with the team.
  Expect tax forms (W-9 or W-8BEN).
- Winners are notified around Jan 29, 2027, at the email on the submission. **72 h to respond.**

## What we're agreeing to [2, 15b, 16]

- Epic gets a perpetual, non-exclusive license to show and modify our submission to promote
  the contest. We keep ownership.
- If we win, Epic can use our names and likenesses for promotion.

## Agent rules (for any AI working in this repo)

1. Before 2026-11-12 05:00 UTC, commit only tooling, configs, prompts and scripts. No game content.
2. Every sourced asset gets a line in the asset log, with its license and URL, when it is added.
3. No real-world brands, logos, or recognizable characters or people in generated assets.
4. Everything player-facing is in English and Teen-appropriate.
5. Never add a runtime dependency the player would have to install.
6. Never submit the entry or anything on itch; a human does that.
7. Never rewrite pushed git history.
