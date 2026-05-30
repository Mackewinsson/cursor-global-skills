---
name: git-commit
description: >-
  Create git commits with safe protocol, HEREDOC messages, and repo-style
  messages. Use when the user asks to commit, save work to git, or stage and
  commit changes.
---

# Git Commit

Only commit when the user explicitly asks.

## Before committing

Run in parallel:

```bash
git status
git diff
git diff --staged
git log -3 --oneline
```

## Safety

- Never update git config
- Never `--no-verify`, `--force`, or destructive git unless explicitly requested
- Never commit `.env`, credentials, or secrets — warn if requested
- Never `git commit --amend` unless user asked AND HEAD is yours AND not pushed
- If a hook fails, fix and create a **new** commit (do not amend a failed commit)
- Never push unless explicitly asked

## Message

- 1–2 sentences, focus on **why**
- Match recent `git log` style (feat/fix/refactor/docs)
- Use HEREDOC:

```bash
git commit -m "$(cat <<'EOF'
Your message here.

EOF
)"
```

## Steps

1. Stage only relevant files
2. Commit with message
3. `git status` to verify success
