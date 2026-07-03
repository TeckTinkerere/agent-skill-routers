---
name: routr-marketing
description: "Marketing copy, SEO audits, and growth content. Use when: landing copy, SEO, meta tags, ads, CRO, App Store listing, blog post, growth."
---

# routr-marketing

**Goal:** copy and SEO that converts.

## 0. Bootstrap

See `routr-catalog/references/skill-registry.md`:

| Skill | When |
|-------|------|
| `seo-audit` | Technical SEO |
| `copywriting` | Headlines, CTAs |
| `ai-seo` | AI search visibility |
| `programmatic-seo` | Template pages at scale |
| `aso` | App store listings |
| `ad-creative` | Paid ads |

```bash
npx skills add coreyhaines31/marketingskills -g --all -y --copy
```

## 1. Goal routing

| Goal | Lead skill |
|------|------------|
| Rankings | `seo-audit` |
| Landing copy | `copywriting` + `routr-frontend` |
| App store | `aso` |
| LLM citations | `ai-seo` |

## 2. Ship with product

Page UI → `routr-frontend` after copy approved. Mobile store → `routr-mobile` + `aso`.

## Handoff

- Implement site → `routr-frontend`
- Deploy/optimize → `routr-deploy`
- Tracking bug → `routr-debug`

## Anti-patterns

- Keyword stuffing without user value
- Copy before audience context (`product-marketing-context` first)
