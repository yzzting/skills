# Adoption Guide

Use this guide when applying the skill to a real repository.

## Goal

Move durable process knowledge into versioned repository files so contributors and agents can read the same source of truth.

## Rollout Order

1. Inspect the existing repository shape.
2. Decide whether the repo already has root instructions, docs, or contributor rules worth preserving.
3. Add or update the root map file first.
4. Add the docs entry point and governance docs.
5. Add `Compact Instructions` to the root map and add a root `HANDOFF.md`.
6. Add commit and change-log conventions.
7. Only then expand module-level docs or feature-specific docs if the repository needs them.

## Keep Vs Create

Keep existing material when it is already:

- accurate
- short enough to stay navigable
- clearly linked from the root map
- aligned with the real codebase

Create or replace material when it is:

- stale
- duplicated across multiple files
- written as future-state fiction instead of current-state guidance
- dependent on chat history to make sense

## Core Pattern

The root file should act as a map, not a full handbook.

Recommended layering:

- `AGENTS.md`: reading order, source-of-truth precedence, working rules, handoff standard
- `HANDOFF.md`: active session continuity for unfinished work
- `docs/index.md`: reading paths and directory guide
- `docs/reference/doc-governance.md`: how and when docs must be updated
- `docs/reference/commit-policy.md`: how changes are packaged into commits
- `docs/reference/change-log.md`: how important changes are logged over time

## Adaptation Rules

- Use the repository's real module names and directories.
- Match the team's existing vocabulary unless it is actively confusing.
- If the repo already uses plans, briefs, RFCs, or specs, point to those instead of inventing a second planning system.
- If the repo has no `docs/` directory yet, create only the folders you need at first.
- Treat `HANDOFF.md` as current working memory. Refresh it or clear it when the work is done.

## Anti-Patterns

Avoid these:

- putting the full project spec into `AGENTS.md`
- creating separate "agent-only truth" outside the repository
- copying templates without editing them
- duplicating the same rule in many root files
- writing future plans as if they already exist
- letting `HANDOFF.md` grow into a stale historical log instead of a current-state handoff

## Handoff Standard

When the work is done, report:

- what changed
- what was verified
- any remaining mismatch between docs and code
- which source won if instructions conflicted
