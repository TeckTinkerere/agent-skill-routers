---
name: marketing-seo-playbook
description: "Marketing copy, SEO audits, and growth content. Use when: landing copy, SEO, meta tags, ads, CRO, App Store listing, blog post."
---

# Marketing & SEO playbook

**Goal:** copy and SEO that converts — technical audits plus persuasive writing.

## 0. Bootstrap

Read if present (`playbook-common/references/skill-catalog.md`):

| Skill | When |
|-------|------|
| `seo-audit` | Technical + on-page SEO audit (150K+) |
| `copywriting` | Headlines, landing copy, CTAs (140K+) |
| `programmatic-seo` | Template pages at scale (95K+) |
| `ai-seo` | Optimize for AI search / citations (82K+) |
| `marketing-psychology` | Persuasion, positioning (103K+) |
| `product-marketing-context` | ICP, messaging framework |
| `aso` | App Store / Play Store listing optimization |
| `ad-creative` | Paid ad copy variations |
| `analytics` | Tracking, UTM, conversion events |

Install bundle: `npx skills add coreyhaines31/marketingskills -g --all -y --copy`

## 1. Clarify goal

| Goal | Lead skill |
|------|------------|
| Fix rankings / technical SEO | `seo-audit` |
| Write landing page | `copywriting` + `frontend-feature-playbook` for build |
| AI Overviews / ChatGPT citations | `ai-seo` |
| Scale SEO pages | `programmatic-seo` |
| App store visibility | `aso` |
| Ad campaigns | `ad-creative`, `ads` |

## 2. SEO audit pass

1. `seo-audit` — crawl issues, meta, structure, Core Web Vitals hooks
2. If building in Next.js → coordinate with `deploy-playbook` / `vercel-optimize`

## 3. Copy pass

1. `product-marketing-context` — who it's for, one promise
2. `copywriting` — headline, subhead, CTA, feature bullets
3. `marketing-psychology` — objections, social proof placement

## 4. AI-era SEO

When user cares about LLM visibility:

1. `ai-seo` — structured content, llms.txt, citation-friendly pages
2. Do not sacrifice human readability

## 5. Ship with product

- Marketing page UI → `frontend-feature-playbook` after copy is approved
- Mobile store → `mobile-expo-playbook` + `aso`
- Measure → `analytics` skill

## Handoff

- Implement Next.js marketing site → `frontend-feature-playbook`
- Debug tracking → `debugging-playbook`

## Anti-patterns

- SEO keyword stuffing without user value
- Copy before knowing the audience (`product-marketing-context` first)
