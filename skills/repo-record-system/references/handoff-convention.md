# Handoff Convention

Use this when a repository needs reliable continuity across compressed or restarted agent sessions.

## Goal

Make the next agent productive without depending on summary quality from chat compression.

## Default File

Use a root-level file:

- `HANDOFF.md`

## Relationship To Other Docs

- `AGENTS.md` tells compression what to preserve.
- `HANDOFF.md` captures the current active state before context is lost.
- Permanent docs still live under `docs/` and remain the source of durable project truth.

`HANDOFF.md` is a continuity file, not the canonical spec.

## When To Update

Update `HANDOFF.md` when:

- ending a session with unfinished work
- opening a fresh session to continue existing work
- a long task has produced important dead ends, rollback notes, or verification results
- context compression is likely to hide architecture decisions or recent file changes

## What To Preserve

Keep these in priority order:

1. architecture decisions and constraints, without summarizing away the reasoning
2. modified files and their key changes
3. current verification status, including pass or fail
4. open TODOs, risks, and rollback notes
5. dead ends or failed attempts that the next agent should not repeat
6. the next recommended step
7. tool outputs only as brief pass or fail summaries when needed

## Writing Rules

- overwrite stale content instead of appending endless history
- keep the file short enough to scan quickly
- point to canonical docs or files when deeper detail already exists
- record exact file paths when referencing modified files
- clear or refresh the file when the task is done
