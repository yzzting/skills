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

### Manual install

Clone this repository and copy the skill into your tool's local skills directory.

For Codex:

```bash
mkdir -p ~/.codex/skills
cp -R skills/repo-record-system ~/.codex/skills/repo-record-system
```

For Claude Code:

```bash
mkdir -p ~/.claude/skills
cp -R skills/repo-record-system ~/.claude/skills/repo-record-system
```

### Install with `npx skills`

If you use the [skills](https://github.com/vercel-labs/skills) CLI, you can install from this repository directly:

```bash
npx skills add https://github.com/yzzting/skills --skill repo-record-system -g -a claude-code -a codex
```

If your local setup uses only one assistant, you can remove the other `-a` flag.

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
