---
name: code-review
description: >-
  Review code for bugs, security, maintainability, and convention fit. Use when
  the user asks for a code review, PR review, or feedback on a diff.
---

# Code Review

## Focus order

1. **Correctness** — logic, edge cases, regressions
2. **Security** — injection, auth, secrets, unsafe defaults
3. **Scope** — unrelated changes, over-engineering
4. **Conventions** — match surrounding code and project patterns
5. **Tests** — meaningful coverage for changed behavior

## Shared / risky files

Before approving edits to shared utilities, hooks, or contexts:

- List what else depends on them
- Flag blast radius to the user

## Feedback format

- **Critical** — must fix before merge
- **Suggestion** — worth improving
- **Nice to have** — optional

Use code citations: ` ```startLine:endLine:path ` for references.

## Output structure

```markdown
## Summary
One paragraph.

## Critical
- ...

## Suggestions
- ...

## Test gaps
- ...
```

Keep review proportional to change size.
