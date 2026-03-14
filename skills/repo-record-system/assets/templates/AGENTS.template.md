# {{REPO_NAME}} Agent Guide

Treat this repository as the record system: docs explain intent, code and tests explain current truth, and both must stay aligned.

## Read Order

Before making non-trivial changes, read in this order:

1. `docs/index.md`
2. the main root project guide such as `README.md` or `CLAUDE.md`
3. the relevant module-level docs
4. current code, tests, and root configuration

## Documentation Map

- `docs/index.md`: top-level doc index and reading paths
- `docs/architecture/`: current architecture and transition records
- `docs/features/`: end-to-end feature behavior
- `docs/product-specs/`: user-visible flows and behavior
- `docs/exec-plans/`: active and completed implementation briefs
- `docs/reference/`: setup, governance, and operational reference
- `docs/spec/`: shared enums, interfaces, or typed contracts
- `docs/generated/`: generated artifacts
- `docs/reviews/` and `docs/retrospectives/`: review history and learning records

`AGENTS.md` is intentionally a map, not the main project spec.

## Source Of Truth Precedence

When docs and implementation differ, use this order:

1. current code and tests
2. root configuration
3. shared contract or spec files
4. root architecture or project guide
5. module-level docs
6. historical plans

If you discover a mismatch, fix the docs in the same change or call it out explicitly in handoff.

## Working Rules

- reuse the existing architecture unless an architecture change is documented first
- keep shared types and docs aligned
- treat tests as executable spec when behavior is already covered
- do not bypass validation, policy, review, or commit gates with agent flexibility

## Documentation Rules

- bugfixes may go straight to code, but must still update docs if behavior or interfaces changed
- non-bugfix feature work should update the relevant docs before implementation starts
- cross-module work should update the relevant feature docs
- interface changes should update the shared contract docs

## Handoff Standard

When finishing work, report:

- what changed
- what was verified
- any remaining mismatch between docs and code
- which source you followed if instructions conflicted
