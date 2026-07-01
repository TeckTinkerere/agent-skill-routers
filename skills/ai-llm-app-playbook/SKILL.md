---
name: ai-llm-app-playbook
description: "Build AI features with Vercel AI SDK (chat, agents, RAG, tools). Use when: chatbot, LLM, streaming, embeddings, tool calling, AI SDK."
---

# AI / LLM app playbook

**Goal:** production AI features — streaming, tools, providers — not prompt spaghetti.

## 0. Bootstrap

Read if present (`playbook-common/references/skill-catalog.md`):

| Order | Skill | Role |
|-------|-------|------|
| 1 | `ai-sdk` | Vercel AI SDK: generateText, streamText, useChat, tools (37K+) |
| 2 | `migrate-ai-sdk-v6-to-v7` | Upgrading AI SDK versions |
| 3 | `find-docs` | Current AI SDK + provider API docs |
| 4 | `agent-design-playbook` | Multi-agent, memory, eval harness (architecture) |
| 5 | `library-integration-playbook` | Provider-specific setup (OpenAI, Anthropic, Google) |

For chat UI in Next.js: pair with `frontend-feature-playbook`.

## 1. Scope the feature

| Pattern | Typical stack |
|---------|----------------|
| Chat UI | `useChat` + `streamText` + `frontend-feature-playbook` |
| One-shot generation | `generateText` / `generateObject` |
| Agent with tools | `ToolLoopAgent`, tool schemas → `tool-design` (agent-design) |
| RAG | embeddings + vector store + `find-docs` for provider |
| Structured output | Zod schemas + `generateObject` |

## 2. Implement (AI SDK)

1. Read `ai-sdk` skill fully before coding
2. `find-docs` — verify provider model IDs and API for installed SDK version
3. Match repo patterns (SymDex: existing AI routes, env vars)

## 3. Architecture checks

For non-trivial agents:

1. `agent-design-playbook` — context budget, tool surface, eval
2. `lean-ctx` — compress large tool outputs in long sessions
3. `context-fundamentals` — if designing new agent loops

## 4. Safety & quality

- [ ] API keys server-side only
- [ ] Rate limits and error handling on streams
- [ ] `evaluation` skill for regression prompts (agent-design)
- [ ] Security: prompt injection awareness on user-facing tools

## 5. Ship

- Chat UI polish → `frontend-feature-playbook`
- Deploy serverless AI routes → `deploy-playbook`
- Marketing the AI product → `marketing-seo-playbook` (`ai-seo` for visibility)

## Handoff

| Need | Playbook |
|------|----------|
| SDK upgrade errors | `migrate-ai-sdk-v6-to-v7` |
| Debug streaming bug | `debugging-playbook` |
| Design multi-agent system | `agent-design-playbook` |

## Anti-patterns

- Client-side API keys
- Skipping `find-docs` for model/API changes between SDK versions
- Building agents without `agent-design-playbook` on production paths
