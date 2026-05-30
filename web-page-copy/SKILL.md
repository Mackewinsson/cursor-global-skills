---
name: web-page-copy
description: >-
  Write landing page and marketing web copy — hero, benefits, CTAs, FAQ, meta
  tags, and section structure. Use when the user asks for website copy,
  landing text, headlines, value proposition, or Spanish/English marketing
  content for a web page.
license: MIT
---

# Web Page Copy

Write conversion-focused copy for landing pages and marketing sites. Output ready-to-paste text matched to the product and audience.

## Before writing

Gather or infer:

1. **Product/service** — what it does in one sentence
2. **Audience** — who buys or uses it
3. **Differentiator** — why them vs alternatives
4. **Primary action** — call, WhatsApp, signup, quote
5. **Language** — Spanish (CL/LATAM), English, or both
6. **Tone** — professional, friendly, urgent, premium (match brand if known)

If missing, ask 1–2 quick questions max, then draft.

## Page structure (default)

Deliver sections in this order unless the user specifies otherwise:

```markdown
## Meta
- title: (≤60 chars, primary keyword + brand)
- description: (≤155 chars, benefit + CTA hint)

## Hero
- eyebrow: (optional, 3–6 words)
- headline: (6–12 words, outcome-focused)
- subheadline: (1–2 sentences, clarify who it's for)
- primary CTA: (verb + benefit, e.g. "Cotiza por WhatsApp")
- secondary CTA: (optional, lower commitment)

## Social proof (optional)
- stat or rating line
- 1 short testimonial hook

## Benefits / Servicios
- 3–4 cards: title (3–5 words) + body (2–3 sentences, concrete)

## How it works (optional)
- 3–4 numbered steps, each ≤1 sentence

## FAQ (optional)
- 3–5 Q&A pairs, objections and logistics

## Final CTA
- headline + button label + reassurance line (e.g. "Respuesta en minutos")
```

## Copy rules

- **Lead with outcomes**, not features ("Tus paquetes llegan a tiempo" not "Tenemos flota propia")
- **Specific beats vague** — numbers, places, timeframes when true
- **One idea per sentence** — scannable on mobile
- **CTAs use verbs** — Cotiza, Escribe, Reserva, Llama (not "Submit" or "Click here")
- **No filler** — cut "soluciones integrales", "de vanguardia", "apasionados por"
- **No false claims** — don't invent stats, certifications, or reviews
- **Match existing brand** — if the project has copy on site, mirror voice and terms

## Headline patterns (pick one fit)

- Outcome: `[Resultado] para [audiencia]`
- Problem → solution: `¿[Problema]? [Marca] [solución].`
- Trust: `[Años/clientes/zona] + [servicio confiable]`

## Spanish (Chile/LATAM)

- Use **tú** or **usted** consistently (default tú for SMB/consumer unless B2B formal)
- Local terms when natural (flete, mudanza, región, despacho)
- Avoid Spain-only slang unless audience is Spain

## Output format

Return copy in markdown with clear section headers. If implementing in code, note which file/section each block maps to when the user provides context.

## With design skills

When also building UI, pair with `@frontend-design` for layout and `@theme-factory` for color/font themes — copy first, then implement.
