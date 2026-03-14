# Commit Convention

Use this when establishing repository-level commit discipline.

## Goals

- make each commit understandable on its own
- keep docs and implementation changes synchronized
- leave enough context for future contributors to understand why the change happened

## Default Format

Use:

`<type>(<scope>): <summary>`

`scope` is optional when it does not add value.

## Recommended Types

- `feat`: user-visible or capability-expanding change
- `fix`: bug fix
- `refactor`: structural change without intended behavior change
- `docs`: documentation-only change
- `test`: test-only change
- `build`: tooling, CI, or dependency change
- `chore`: maintenance that does not fit the other types

## Commit Rules

- one logical change per commit
- keep formatting-only changes separate when practical
- if behavior, interfaces, or architecture changed, update the related docs in the same commit or the same branch before merge
- if the repository uses feature briefs, feature commits should correspond to the active brief
- do not mix unrelated refactors into bugfix or feature commits

## Summary Line Rules

- write in the imperative mood
- keep it specific
- target 72 characters or fewer
- name the real subsystem when possible

## Commit Body Guidance

Add a body for non-trivial commits. A good body usually explains:

- why the change was needed
- what constraint or rule shaped the approach
- what was verified

## Examples

- `feat(auth): add passwordless email login flow`
- `fix(api): guard null webhook payloads`
- `docs(governance): define record-system update rules`
- `refactor(editor): split scene policy helpers`

## Merge Expectation

Before merge, the branch should make sense as a record:

- commit history is readable
- docs and code tell the same story
- the final handoff can point to the relevant commits without extra chat context
