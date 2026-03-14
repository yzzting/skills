# Commit Policy

This repository expects commits to be readable as a durable engineering record.

## Format

Use:

`<type>(<scope>): <summary>`

`scope` is optional.

## Types

- `feat`
- `fix`
- `refactor`
- `docs`
- `test`
- `build`
- `chore`

## Rules

- keep one logical change per commit
- do not mix unrelated work in the same commit
- separate formatting-only changes when practical
- if behavior, interfaces, or architecture changed, update the related docs before merge
- if feature briefs are part of this repository, keep feature commits aligned with the active brief

## Good Commit Bodies

For non-trivial commits, explain:

- why the change was needed
- what constraints shaped the implementation
- what was verified

## Examples

- `feat(search): add saved query filters`
- `fix(api): reject malformed event payloads`
- `docs(governance): define change-log process`
