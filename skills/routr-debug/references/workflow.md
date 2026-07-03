# Debug workflow

## Phase 1: Root cause investigation

Complete before any fix.

1. Read error messages and stack traces completely
2. Reproduce consistently — document exact steps
3. Check recent changes (git diff, deps, config)
4. Multi-component systems: add diagnostics at each boundary, run once, then localize

## Phase 2: Hypothesis

1. State root-cause theory in one sentence
2. Design minimal experiment to confirm/deny
3. Max 3 active hypotheses

## Phase 3: Fix

1. Smallest diff for root cause
2. No unrelated refactors

## Phase 4: Verify

1. Re-run reproduction
2. Check callers/callees for blast radius
3. Adjacent tests if public API changed

## Tool order

1. `symdex index` if repo not indexed
2. SymDex symbol/route/caller search
3. lean-ctx `signatures` → `map` → `lines:N-M`
4. Full read only when narrow pass insufficient
