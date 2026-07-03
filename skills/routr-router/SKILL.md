---
name: routr-router
description: "Pick the right ROUTR workflow when the task is unclear. Use when: not sure which skill, 'what approach', multiple tasks apply, 'help me with this', starting a new task, or user didn't name a playbook."
---

# routr-router

Pick **one** `routr-*` skill, announce it in one line, then read and follow that skill's `SKILL.md` exclusively.

## When to activate

- User intent spans multiple domains
- No clear match to a single router
- User asks "what should we do first?"

## Do not activate

- Intent already clear — load the specific `routr-*` directly

## Iron law

**One router at a time — never load unrelated `routr-*` skills in parallel.**

## Decision tree

```
User intent?
├─ Plan / spec / PRD / grill idea              → routr-plan
├─ Bug / error / crash / root cause            → routr-debug
├─ Fix + verify + commit (scoped)              → routr-ship
├─ Write tests / TDD / Playwright              → routr-test
├─ Review PR / code review                     → routr-review
├─ Security audit / vuln                       → routr-security
├─ Refactor / tech debt                        → routr-refactor
├─ Deploy / Vercel / go live                   → routr-deploy
├─ SQL / Supabase / migrations                 → routr-database
├─ Browser QA / smoke test                     → routr-qa
├─ How does X work? / onboard                  → routr-explore
├─ Library API / SDK setup                     → routr-integrate
├─ Build agent / multi-agent / context         → routr-agents
├─ AI chatbot / LLM / RAG / AI SDK             → routr-ai
├─ Expo / React Native                         → routr-mobile
├─ Marketing / SEO / landing copy              → routr-marketing
├─ Video / promo / /brag / Remotion            → routr-video
├─ New UI / page / component / redesign        → routr-frontend
└─ Animate / motion / scroll (UI exists)       → routr-motion
```

Details: [references/decision-tree.md](./references/decision-tree.md)

## Frontend detection

Touches `.tsx`, `.jsx`, `.vue`, `.svelte`, CSS/Tailwind, layout, components, pages, UI/UX:

- Build or redesign → `routr-frontend`
- Motion only → `routr-motion`
- Visual bug → `routr-debug`
- Post-deploy UI check → `routr-qa`

## Precedence (most specific wins)

1. `routr-motion` — motion polish only
2. `routr-frontend` — new UI, pages, design system
3. `routr-debug` — bugs, errors
4. `routr-ship` — fix + commit (not open debug)
5. `routr-integrate` — third-party library docs
6. `routr-explore` — understand code, no bug
7. `routr-agents` — agent systems
8. `routr-plan` — specs before coding
9. `routr-test` — TDD, Playwright
10. `routr-review` — PR review
11. `routr-deploy` — shipping to production
12. `routr-database` — Postgres / Supabase
13. `routr-refactor` — structure, no behavior change
14. `routr-qa` — browser smoke tests
15. `routr-security` — security pass
16. `routr-mobile` — Expo / RN
17. `routr-marketing` — SEO, copy
18. `routr-ai` — AI SDK apps
19. `routr-video` — video workflows

## Multi-router chains

Run **sequentially** — finish one before starting next:

| User goal | Chain |
|-----------|-------|
| New feature end-to-end | `routr-plan` → `routr-frontend` → `routr-ship` |
| AI chat product | `routr-plan` → `routr-ai` → `routr-frontend` → `routr-ship` |
| Ship + brag video | `routr-ship` → `routr-video` → `routr-marketing` |
| Expo app + store listing | `routr-mobile` → `routr-marketing` → `routr-deploy` |
| Fix bug in production | `routr-debug` → `routr-ship` → `routr-deploy` |
| Deploy + verify | `routr-deploy` → `routr-qa` |

## After routing

1. Read `routr-catalog/references/resolution.md` if child skills missing
2. Load chosen `routr-*` skill only
3. Install child bundles from `skill-registry.md` if output feels weak

## Quick reference

| Router | Trigger words |
|--------|---------------|
| `routr-plan` | plan, spec, PRD, brainstorm, grill |
| `routr-debug` | debug, trace, error, failing, broken |
| `routr-ship` | fix, patch, ship, commit, PR |
| `routr-test` | test, TDD, Playwright, coverage |
| `routr-review` | review, PR feedback, diff |
| `routr-security` | security, audit, vuln, RLS |
| `routr-refactor` | refactor, clean up, tech debt |
| `routr-deploy` | deploy, Vercel, production, preview |
| `routr-database` | SQL, Postgres, Supabase, migration |
| `routr-qa` | browser test, QA, screenshot, smoke |
| `routr-explore` | how does, architecture, where is |
| `routr-integrate` | library docs, API, configure SDK |
| `routr-agents` | agent system, harness, eval |
| `routr-ai` | chatbot, LLM, AI SDK, RAG, streaming |
| `routr-mobile` | Expo, React Native, iOS, Android |
| `routr-marketing` | SEO, copy, ads, ASO, growth |
| `routr-video` | video, promo, /brag, Remotion, MP4 |
| `routr-frontend` | build UI, landing, component |
| `routr-motion` | animate, Framer, motion, scroll |
