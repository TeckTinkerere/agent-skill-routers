---
name: routr-mobile
description: "Build Expo or React Native apps (screens, navigation, native UI). Use when: mobile app, Expo, React Native, iOS, Android, EAS, native screen."
---

# routr-mobile

**Goal:** native-quality mobile UI with Expo/RN best practices.

## 0. Bootstrap

See `routr-catalog/references/skill-registry.md`:

| Order | Skill | Role |
|-------|-------|------|
| 1 | `building-native-ui` | Expo Router, native patterns |
| 2 | `vercel-react-native-skills` | RN performance |
| 3 | `native-data-fetching` | Data loading |
| 4 | `react-native-best-practices` | Conventions |
| 5 | `find-docs` | Expo API docs |
| 6 | `symdex-code-search` | Existing screens |

`expo-tailwind-setup` if NativeWind.

## 1. Discover

Expo SDK version; router vs legacy; SymDex `app/`.

## 2. Build

`building-native-ui` + `react-native-design`. Tokens from `frontend-design` adapted for mobile density.

**Skip:** web shadcn, web Framer patterns.

## 3. Ship

Store copy → `routr-marketing` (`aso`). EAS → `expo-deployment`, `routr-deploy`.

## Handoff

| Need | Router |
|------|--------|
| Landing page | `routr-frontend` |
| SEO / ASO | `routr-marketing` |
| Backend API | `routr-integrate` |
| Mobile bug | `routr-debug` |

## Anti-patterns

- Web React patterns (div, CSS grid) in RN
- Skip safe areas and accessibility
