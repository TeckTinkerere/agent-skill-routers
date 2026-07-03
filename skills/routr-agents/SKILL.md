---
name: routr-agents
description: "Design multi-agent systems, context windows, and eval harnesses. Use when: building agents, memory, tools, context engineering, agent harness."
---

# routr-agents

**Goal:** principled agent architecture — not ad-hoc prompt stacking.

## 0. Bootstrap

See `routr-catalog/references/skill-registry.md`. Load by sub-task only:

| Sub-task | Skill |
|----------|-------|
| Concepts | `context-fundamentals` |
| Degrading mid-session | `context-degradation` |
| Long handoff | `context-compression` |
| Token budget | `context-optimization` |
| Multiple agents | `multi-agent-patterns` |
| Memory | `memory-systems` |
| Tools / MCP | `tool-design` |
| File-based context | `filesystem-context` |
| Production | `harness-engineering` |
| Quality | `evaluation`, `advanced-evaluation` |

Runtime: `lean-ctx` when implementing.

**Skip:** `frontend-design`, `caveman` unless terse docs requested.

## 1. Clarify

Single vs multi-agent; human-in-loop; context budget; eval criteria.

## 2. Design

Pattern → tools → memory → harness.

## 3. Implement

Prototype harness before scaling prompts.

## Handoff

- Wrong file reads → `routr-debug` + symdex
- Agent UI → `routr-frontend`
