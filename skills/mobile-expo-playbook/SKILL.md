---
name: mobile-expo-playbook
description: "Build Expo or React Native apps (screens, navigation, native UI). Use when: mobile app, Expo, React Native, iOS, Android, EAS."
---

# Mobile & Expo playbook

**Goal:** ship native-quality mobile UI with Expo/React Native best practices.

## 0. Bootstrap

Read if present (`playbook-common/references/skill-catalog.md`):

| Order | Skill | Role |
|-------|-------|------|
| 1 | `building-native-ui` | Expo Router UI, navigation, native patterns (57K+) |
| 2 | `vercel-react-native-skills` | RN performance, lists, animations (155K+) |
| 3 | `native-data-fetching` | Data loading patterns for mobile (45K+) |
| 4 | `react-native-best-practices` | Callstack RN conventions |
| 5 | `react-native-design` | Mobile-specific layout and design |
| 6 | `find-docs` | Current Expo / RN API docs |
| 7 | `symdex-code-search` | Find existing screens and modules |

For styling: `expo-tailwind-setup` if using NativeWind/Tailwind.

## 1. Discover

- [ ] Expo SDK version (`package.json`, `app.json`)
- [ ] Router vs legacy navigation
- [ ] SymDex: screens, hooks, API routes in `app/`

## 2. Build UI

1. `building-native-ui` — layout, tabs, stacks, native components
2. `react-native-design` — spacing, platform conventions (iOS vs Android)
3. Shared design intent? Skim `frontend-design` for tokens — adapt for mobile density

**Skip:** web-only `shadcn`, Framer Motion web patterns.

## 3. Data & logic

1. `native-data-fetching` — queries, caching, offline
2. `find-docs` for Expo modules (camera, notifications, etc.)

## 4. Performance

- `vercel-react-native-skills` — list virtualization, re-renders, native modules
- `react-native-best-practices` — project structure, testing hooks

## 5. Ship

- App store listing copy → `marketing-seo-playbook` (`aso` skill)
- Deploy OTA / stores → `expo-deployment`, `deploy-playbook` (EAS)
- Mobile bug → `debugging-playbook`

## Handoff

| Need | Playbook |
|------|----------|
| Landing page for app | `frontend-feature-playbook` |
| SEO / App Store optimization | `marketing-seo-playbook` |
| Backend API for app | `library-integration-playbook` |

## Anti-patterns

- Copy-paste web React patterns (div, CSS grid) into RN
- Skip platform-specific safe areas and accessibility
