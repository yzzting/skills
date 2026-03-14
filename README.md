# yzzting skills

Reusable skills for AI coding assistants such as Claude Code and Codex.

This repository is the public home for skills that I want to reuse across projects instead of rewriting the same operating rules in every chat.

## Included skills

### `repo-record-system`

Bootstraps or upgrades a repository so the repository itself becomes the long-lived record system.

It scaffolds:

- `AGENTS.md` as a short map
- `docs/index.md` as the docs entry point
- `docs/reference/doc-governance.md`
- `docs/reference/commit-policy.md`
- `docs/reference/change-log.md`
- `docs/exec-plans/active/` and `docs/exec-plans/completed/` for teams that use implementation briefs

## Repository layout

```text
skills/
└── repo-record-system/
    ├── SKILL.md
    ├── references/
    ├── assets/
    ├── scripts/
    └── agents/
```

## Install

Install all skills from this repository:

```bash
npx skills add yzzting/skills
```

List available skills before installing:

```bash
npx skills add yzzting/skills --list
```

Install only `repo-record-system`:

```bash
npx skills add yzzting/skills --skill repo-record-system
```

Install `repo-record-system` globally for Claude Code and Codex:

```bash
npx skills add yzzting/skills --skill repo-record-system -g -a claude-code -a codex -y
```

The `skills` CLI supports symlink-based installs, which makes updates easier over time.

## Manual install

If you cannot use the `skills` CLI, you can still copy `skills/repo-record-system/` into your local assistant skills directory by hand.

## Use

After installing the skill, invoke it in a prompt such as:

- `Use $repo-record-system to initialize this repository as a record system.`
- `Use $repo-record-system to upgrade this repository and add commit and change-log conventions.`

## Development

- Keep `SKILL.md` concise and procedural.
- Put detailed guidance in `references/`.
- Put repository file templates in `assets/templates/`.
- Put deterministic helpers in `scripts/`.
- Avoid local absolute paths and private machine details.

## License

[MIT](LICENSE)
