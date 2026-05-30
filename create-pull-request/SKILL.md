---
name: create-pull-request
description: >-
  Create GitHub pull requests with gh CLI, branch push, and summary/test plan.
  Use when the user asks to open a PR, create a pull request, or push and PR.
---

# Create Pull Request

Use `gh` for all GitHub tasks. Never update git config.

## Before creating

Run in parallel:

```bash
git status
git diff
git diff --staged
git branch -vv
git log origin/main..HEAD --oneline
git diff origin/main...HEAD
```

Adjust `main` if the base branch differs.

## Steps

1. Push if needed: `git push -u origin HEAD`
2. Create PR:

```bash
gh pr create --title "Title" --body "$(cat <<'EOF'
## Summary
- Bullet 1
- Bullet 2

## Test plan
- [ ] Step to verify

EOF
)"
```

3. Return the PR URL to the user.

## Body rules

- Summary: 1–3 bullets on **why**, not a file list
- Test plan: concrete checklist
- Review **all** commits on the branch, not just the latest

## Do not

- Use `git` interactive flags (`-i`)
- Push or force-push unless asked
