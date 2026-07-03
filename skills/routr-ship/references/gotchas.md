# Ship gotchas

1. **Debug masquerading as ship**: User says "fix and commit" but cause unknown — route to `routr-debug` first.
2. **Drive-by refactor**: Scope creep in "small fix" PR — reject unrelated hunks.
3. **Skip tests**: "It works on my machine" — run project test command.
4. **Secrets in diff**: Scan for API keys before commit.
5. **Amend after push**: Never amend shared branch without user explicit request.
