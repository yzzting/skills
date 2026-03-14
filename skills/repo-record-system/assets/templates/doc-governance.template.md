# Documentation Governance

This repository treats itself as the record system. These rules keep that practical.

## Update Rules

- bugfix: code-first is allowed, but update docs if behavior, interfaces, workflows, or operator expectations changed
- feature change: doc-first is required
- behavior change: update the relevant product or reference doc
- cross-module feature change: update the relevant file under `docs/features/`
- architecture change: update `docs/architecture/` and the affected module docs
- interface change: update `docs/spec/` and the related reference docs
- new feature work: add a brief under `docs/exec-plans/active/`
- merged feature work: move the brief to `docs/exec-plans/completed/`

## Required Feature Workflow

Before implementing any non-bugfix feature change:

1. define or update the feature brief in `docs/exec-plans/active/`
2. define or update the end-to-end behavior in `docs/features/`
3. update architecture or reference docs if the change touches those layers
4. only then start implementation

## Freshness Rules

- current-state docs should describe what exists now
- future ideas belong in an active brief or an architecture transition doc
- historical plans should stay in a historical area

## Authoring Rules

- keep root docs short and navigable
- keep module docs focused on ownership and constraints
- keep `docs/features/` focused on end-to-end capability behavior
- prefer linking to deeper docs over duplicating long content
- when code and prose disagree, either fix the prose in the same change or state the mismatch explicitly
