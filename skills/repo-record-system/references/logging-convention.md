# Logging Convention

Use this when establishing an ongoing repository change log.

## Goal

Record high-signal changes in a durable place inside the repository so future contributors can understand what changed and why.

## Default File

Unless the repository already has a better equivalent, use:

- `docs/reference/change-log.md`

## When To Log

Add an entry for changes that materially affect:

- architecture
- workflows or operating rules
- interfaces or shared contracts
- cross-module features
- migrations or persistent data shape
- incident fixes with lasting lessons

You can usually skip entries for:

- typo-only changes
- local refactors with no workflow or behavior impact
- trivial dependency bumps unless they change operating expectations

## Entry Shape

Each entry should capture:

- date
- title
- type
- summary
- files or areas affected
- verification performed
- follow-up, if any

## Writing Rules

- newest entries first
- keep entries factual and short
- mention the lasting impact, not every edit detail
- if the change resolved a mismatch between docs and code, say so explicitly
- if the change followed an existing spec or brief, reference it

## Relationship To Commits

Commits explain the change history at a code-review level.

The change log explains why a future reader should care.

Both are useful; neither replaces the other.
