# {{REPO_NAME}} Docs Index

This repository uses its docs tree as the long-lived record system. Start here before reading module docs or implementation details.

## Read Paths

### For active unfinished work

1. `../HANDOFF.md`
2. the relevant file under `reference/`
3. the relevant feature or architecture docs
4. code and tests

### For general project context

1. the main root guide such as `README.md` or `CLAUDE.md`
2. `docs/architecture/`
3. `docs/features/`
4. `docs/product-specs/`
5. relevant module docs
6. code and tests

### For new implementation work

1. `docs/exec-plans/active/`
2. `docs/features/`
3. `docs/reference/`
4. code and tests

### For interface or integration work

1. `docs/reference/`
2. `docs/spec/`
3. code and tests

## Directory Guide

- `../HANDOFF.md`: current handoff for unfinished multi-session work
- `architecture/`: current architecture and transitions
- `features/`: feature-level behavior docs
- `product-specs/`: product behavior and user flows
- `exec-plans/`: active and completed task briefs
- `reference/`: setup, governance, and operational reference
- `spec/`: typed contracts and enums used by code
- `generated/`: machine-generated outputs and placeholders
- `reviews/`: review history
- `retrospectives/`: bug and deviation records

## Source Of Truth Rules

- current code and tests win over stale prose
- `HANDOFF.md` helps resume active work but does not override permanent docs
- shared spec files are the contract layer
- architecture and module docs describe intended structure
- feature docs describe end-to-end behavior
- historical docs are reference only
