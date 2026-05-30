---
name: nextjs-web
description: >-
  Build or change Next.js App Router sites with React, Tailwind, and server
  components. Use for Next.js pages, layouts, metadata, static data, and
  landing pages.
---

# Next.js Web Projects

## Before coding

- Read `package.json` for Next/React versions — APIs differ by major version
- Check `node_modules/next/dist/docs/` if unsure about deprecations
- Read neighboring files for patterns (server vs client components, data loading)

## Defaults

- Prefer **Server Components** unless hooks, browser APIs, or interactivity require `"use client"`
- Static or JSON data in `src/data/` when no live API is needed
- Env secrets in `.env.local` (gitignored); document in `.env.local.example` only

## Structure

```
src/app/          routes, layout, metadata
src/components/   UI (server by default)
src/lib/          pure helpers, data loaders
src/data/         static JSON when appropriate
```

## Tailwind

- Use existing theme tokens / `theme.json` if present
- Mobile-first: test narrow widths, sticky header offset (`scroll-mt-*`)

## Performance

- `next/image` for images with explicit dimensions
- Avoid client fetch on landing pages when static/ISR is enough

## Do not

- Commit API keys or `.env.local`
- Add heavy dependencies for one-off tasks
- Assume Next.js docs from training data — verify against installed version
