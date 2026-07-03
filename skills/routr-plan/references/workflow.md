# Planning workflow

## Brainstorm output

1. User intent vs stated request
2. 2–3 approaches with trade-offs
3. Risks and open questions
4. Recommended approach + why

## Grill pass

Use `grill-me` (canonical name) to challenge:

- Assumptions about users and scale
- Failure modes and rollback
- What's explicitly out of scope

## PRD template

```markdown
# [Feature name]

## Problem
[Who has what problem]

## Success metrics
- [ ] Measurable outcome 1
- [ ] Measurable outcome 2

## Acceptance criteria
- [ ] Given … when … then …
- [ ] …

## Non-goals
- …

## Open questions
- …
```

## Architecture preview

Large change → `improve-codebase-architecture` or `routr-explore` on affected areas.
