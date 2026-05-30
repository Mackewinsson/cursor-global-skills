---
name: engineering-principles
description: >-
  Implement features with minimal scope, DRY, SOLID, and project conventions.
  Use when writing or refactoring code, adding features, or fixing bugs in any
  codebase.
---

# Engineering Principles

## Scope

- Smallest correct diff; no drive-by refactors
- Question-only tasks → no code changes
- Reuse existing functions/components before new abstractions

## Code quality

- **DRY** — extract logic repeated more than once
- **Single responsibility** — one purpose per module
- **Match the codebase** — naming, imports, types, comment level
- Comments only for non-obvious business or technical detail

## Shared code

Before editing shared utils, hooks, models, or context:

1. Find dependents
2. Tell the user what may break
3. Confirm if impact is unclear

## Tests

Add tests only when requested or when they cover real behavior — not trivial asserts.

## Verification

After meaningful changes: run relevant lint/build/tests if available; report results.

## Anti-patterns

- One-line helpers that should stay inline
- Magic strings when the project already uses constants/tokens
- Excessive error handling for impossible paths
- Breaking public APIs without need
