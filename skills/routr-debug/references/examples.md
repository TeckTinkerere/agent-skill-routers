# Debug examples

## Example 1: TypeError on click

**Input:** "Button click throws Cannot read property 'id' of undefined"

**Expected behavior:**
1. Lock symptom — stack trace line number
2. SymDex/lean-ctx read handler + data source (signatures first)
3. Hypothesis: optional chaining missing on async-loaded data
4. Fix: guard or default; verify click flow

## Example 2: Test fails only in CI

**Input:** "Playwright passes locally, fails in GitHub Actions"

**Expected behavior:**
1. Compare CI vs local env (base URL, secrets, viewport)
2. Read CI log artifact, not re-run locally only
3. Do not skip — investigate timing or missing env var

## Example 3: User wants commit immediately

**Input:** "Just fix it and push"

**Expected behavior:**
1. Still reproduce once
2. If root cause unclear → state blocker, switch to `routr-ship` only after verify
