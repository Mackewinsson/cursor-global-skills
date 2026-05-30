# cursor-global-skills

Personal Cursor Agent Skills shared across all projects.

These skills live in `~/.cursor/skills/` after install. Cursor loads them automatically in every workspace.

## Quick install (all projects)

```bash
git clone git@github.com:Mackewinsson/cursor-global-skills.git ~/projects/cursor-global-skills
cd ~/projects/cursor-global-skills
./install.sh
```

Restart Cursor (or open a new Agent chat) so skills are picked up.

## Update skills

One command — pull from GitHub and refresh symlinks:

```bash
cd ~/projects/cursor-global-skills
./update.sh
```

Or from anywhere if you add a shell alias (see below).

## Shell alias (optional)

Add to `~/.zshrc`:

```bash
alias skills-update='cd ~/projects/cursor-global-skills && ./update.sh'
```

Then run `skills-update` from any directory after `source ~/.zshrc`.

## How it works

| Location | Scope |
|----------|--------|
| `~/.cursor/skills/<name>/` | **Global** — every project (this repo) |
| `.cursor/skills/<name>/` | **Project only** — committed with the repo |
| `~/.cursor/skills-cursor/` | Cursor built-ins — do not edit |

`install.sh` symlinks each skill folder from this repo into `~/.cursor/skills/`. Run `./update.sh` after pulling to refresh links on all machines.

| Script | Purpose |
|--------|---------|
| `install.sh` | Link (or `--uninstall`) skills into `~/.cursor/skills/` |
| `update.sh` | `git pull` + `install.sh` |

## Included skills

### Workflow (custom)

| Skill | Use when |
|-------|----------|
| `git-commit` | User asks to commit; message style and safety rules |
| `create-pull-request` | Create or open a PR with `gh` |
| `code-review` | Review diffs, PRs, or code quality |
| `engineering-principles` | Implement features — minimal scope, DRY, match conventions |
| `nextjs-web` | Next.js / React / Tailwind landing or app work |

### Design & copy

| Skill | Use when |
|-------|----------|
| `frontend-design` | Distinctive UI — avoid generic AI aesthetics |
| `web-page-copy` | Landing copy: hero, CTAs, benefits, FAQ, meta tags (ES/EN) |
| `theme-factory` | Apply color/font themes to landings, slides, docs |

### Writing & docs (from [Anthropic](https://github.com/anthropics/skills))

| Skill | Use when |
|-------|----------|
| `doc-coauthoring` | Structured workflow for docs, specs, proposals |
| `internal-comms` | Status updates, FAQs, newsletters (templates in `examples/`) |

### Dev & meta (from Anthropic)

| Skill | Use when |
|-------|----------|
| `webapp-testing` | Test web apps with Playwright (local scripts) |
| `skill-creator` | Create or improve new skills |

## Use a skill in chat

Mention with `@` or describe the task:

- `@web-page-copy escribe el hero para Transportes EP3`
- `@frontend-design rediseña la landing`
- `@theme-factory aplica un tema al sitio`
- `@doc-coauthoring ayúdame a redactar esta spec`

## Project-specific skills

Keep shared skills in this repo. For one-repo-only rules:

```bash
mkdir -p /path/to/your-project/.cursor/skills/my-api/SKILL.md
```

Project skills stack with global skills.

## Uninstall one skill

```bash
rm ~/.cursor/skills/git-commit   # removes symlink only
```

## Uninstall all (from this repo)

```bash
cd ~/projects/cursor-global-skills
./install.sh --uninstall
```

## Add a new skill

1. Create `my-skill/SKILL.md` with YAML frontmatter (`name`, `description`).
2. Run `./install.sh`.
3. Commit and push.

See [create-skill](https://cursor.com/docs) or `@skill-creator` for format.

## Attribution

Skills adapted from [anthropics/skills](https://github.com/anthropics/skills) include `LICENSE.txt` where provided (Apache 2.0). See each skill folder.

- `frontend-design`, `theme-factory`, `webapp-testing`, `skill-creator`, `internal-comms` — Anthropic
- `web-page-copy` — custom (MIT), inspired for landing/marketing copy
- Workflow skills — custom for this repo
