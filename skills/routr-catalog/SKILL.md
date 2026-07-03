---
name: routr-catalog
description: "Skill install registry and paths for all routr-* routers. Use when: a router says a child skill is missing, install commands, skill aliases, or bundle profiles."
---

# routr-catalog

Read-only reference skill. Do not replace situational `routr-*` routers.

## Files

- [resolution.md](references/resolution.md) — where skills live, how to load them
- [skill-registry.md](references/skill-registry.md) — canonical names, aliases, install commands, bundles
- [video-skills-leaderboard.md](references/video-skills-leaderboard.md) — video skill ranking

When any router says "install missing skills", use the registry.

## Child skill loading

1. Read `{skills-root}/{canonical-name}/SKILL.md`
2. If missing, run install command from registry
3. If still missing, router's `routr-depth-*` fallback or `references/fallback.md`
