---
name: repo-record-system
description: Establish or upgrade a repository so the repository itself becomes the long-lived record system. Use when initializing shared docs structure, AGENTS.md maps, documentation governance, commit conventions, or change-log conventions across projects.
metadata:
  short-description: Scaffold repo-as-record-system docs and workflow
---

# Repo Record System

Use this skill when a repository needs durable operating rules that live with the code instead of in chat history.

This skill does not replace repository docs. It scaffolds or updates them.

## When To Use

- bootstrapping a new repository
- upgrading a repository that depends on tribal knowledge
- standardizing contributor rules across multiple projects
- preparing a repository shared by multiple coding agents

## Desired Outcome

A repository using this pattern should usually have:

- `AGENTS.md` as a short navigation map
- `docs/index.md` as the docs entry point
- `docs/reference/doc-governance.md` for update rules
- `docs/reference/commit-policy.md` for commit discipline
- `docs/reference/change-log.md` for ongoing change logging
- `docs/exec-plans/active/` and `docs/exec-plans/completed/` if the team uses implementation briefs

## Workflow

1. Read minimal context first: `README`, `package.json`, existing root instructions, and the current docs tree.
2. Preserve the working repository structure. Extend existing docs instead of creating a parallel rule system.
3. Decide whether the repository already has a partial record system. If it does, fill the gaps instead of replacing everything.
4. Add or update the repo-level documents:
   - `AGENTS.md`
   - `docs/index.md`
   - `docs/reference/doc-governance.md`
   - `docs/reference/commit-policy.md`
   - `docs/reference/change-log.md`
5. Match terminology and paths to the real codebase. The generated files must describe the repository that actually exists.
6. If the repo uses feature briefs, ensure `docs/exec-plans/active/` and `docs/exec-plans/completed/` exist.
7. In the final handoff, report what changed, what was verified, and any remaining mismatch between code and docs.

## Operating Rules

- The repository is the source of operational truth.
- Code and tests describe current behavior; docs describe intent, rules, and reading paths.
- Root instructions should stay short and point to deeper docs.
- Prefer links over duplicated prose.
- Bugfixes may start from code, but docs must be updated if behavior or interfaces changed.
- Non-bugfix feature changes should update the relevant docs before implementation starts.

## References

Read these only when needed:

- `references/adoption-guide.md` for rollout guidance
- `references/commit-convention.md` for commit rules
- `references/logging-convention.md` for change-log rules

## Templates

Use `assets/templates/` as a starting point. Copy the templates into the target repository, then tailor the language and paths to the real project.

Do not leave template placeholders in the target repository.

## Script

Use `scripts/init-repo-record-system.sh <repo-root> [repo-name]` to bootstrap a sparse repository.

After running the script:

- review every generated file
- align names and paths with the real codebase
- remove any placeholder language
