# Frontend gotchas

1. **CSS specificity wars**: `.section` vs `.cta` padding cancel — use consistent selector strategy.
2. **shadcn drift**: Customizing every component breaks upgrade path — extend tokens, not every primitive.
3. **Motion overload**: More animation ≠ better design — one orchestrated moment per viewport.
4. **Copy as decoration**: Placeholder lorem reads as AI slop — write real or brief-specific copy.
5. **Ignoring existing system**: Always SymDex/lean-ctx for existing components before inventing new patterns.
6. **Web patterns on mobile**: div/grid CSS does not port to React Native — use `routr-mobile`.
