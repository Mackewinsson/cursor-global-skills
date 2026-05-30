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

```bash
cd ~/projects/cursor-global-skills
git pull
./install.sh
```

## How it works

| Location | Scope |
|----------|--------|
| `~/.cursor/skills/<name>/` | **Global** — every project (this repo) |
| `.cursor/skills/<name>/` | **Project only** — committed with the repo |
| `~/.cursor/skills-cursor/` | Cursor built-ins — do not edit |

`install.sh` symlinks each skill folder from this repo into `~/.cursor/skills/`. Edits here + `git pull` update all projects.

## Included skills

| Skill | Use when |
|-------|----------|
| `git-commit` | User asks to commit; need message style and safety rules |
| `create-pull-request` | Create or open a PR with `gh` |
| `code-review` | Review diffs, PRs, or code quality |
| `engineering-principles` | Implement features — minimal scope, DRY, match conventions |
| `nextjs-web` | Next.js / React / Tailwind landing or app work |

## Use a skill in chat

Skills with `disable-model-invocation: true` (default here) load when you **@ mention** them or ask explicitly:

- `@git-commit commit these changes`
- `@create-pull-request open a PR`
- `@code-review review my diff`

Or describe the task; the agent may pick the skill from its description.

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

See [create-skill](https://cursor.com/docs) or Cursor’s built-in create-skill guidance for format.
