# Ship workflow

## Impact matrix

| Change type | Check |
|-------------|-------|
| Public API | SymDex callers + tests |
| UI component | Visual + a11y spot check |
| Config/env | Document in PR description |
| Migration | Rollback plan noted |

## Max-files rule

Typical fix: ≤ 3 files. If more, split into separate commits or confirm scope with user.

## Commit message template

```
<type>(<scope>): <imperative summary>

<body: why, not what — 1-2 sentences>
```

Types: `fix`, `feat`, `refactor`, `test`, `chore`

## PR description template

```markdown
## Summary
[1-2 sentences]

## Test plan
- [ ] …
```

## UI ship extras

If UI-facing: optional `routr-motion` short pass — not full redesign.
