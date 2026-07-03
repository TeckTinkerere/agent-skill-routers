# Debug gotchas

1. **Symptom masking**: A try/catch that swallows errors — read the original throw site, not the handler.
2. **Heisenbugs**: Logging changes timing — use breakpoints or structured logs, not printf spam.
3. **Wrong layer**: UI bug may be API response shape — verify network tab / response JSON before CSS.
4. **Stale build**: Next.js/Turbopack cache — clear `.next` before chasing phantom errors.
5. **Flaky tests**: Retries hide race conditions — fix synchronization, don't increase timeout blindly.
6. **Context rot**: Agent contradicts earlier facts → read `context-degradation`, re-state symptom from scratch.
