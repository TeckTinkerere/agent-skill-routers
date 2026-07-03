# Ship fallback

Use when commit/PR skills not installed.

## Verify gate

- [ ] Re-run reproduction or `npm test` / project test command
- [ ] `git diff` reviewed — no accidental files

## Commit format

```
fix(scope): short imperative summary

Optional body explaining why.
```

## PR minimum

- Summary of change
- How you verified
- Screenshots if UI

```bash
npx skills add JuliusBrussee/caveman -g --skill caveman-commit -y --copy
npx skills add obra/superpowers -g --skill requesting-code-review -y --copy
```
