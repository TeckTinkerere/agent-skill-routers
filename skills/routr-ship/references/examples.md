# Ship examples

## Example 1: Typo fix

**Input:** "Fix typo in README and commit"

**Expected:** Single file, verify render, commit with `docs: fix typo in README`.

## Example 2: Bug already diagnosed

**Input:** "Apply the null check we discussed and open PR"

**Expected:** Implement, test, PR with test plan — no re-debug.

## Example 3: Huge diff

**Input:** "Ship everything"

**Expected:** Clarify scope; split or confirm; do not one-shot 50 files without review.
