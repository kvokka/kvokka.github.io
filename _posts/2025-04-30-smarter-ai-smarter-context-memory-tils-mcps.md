---
title: "Smarter AI, Smarter Context: Experiments with Memory, TILs, and Specialized MCPs"
date: 2025-04-30 10:00:00 +0000
tags: [AI, Memory, Context, MCP, TIL, Development, Tooling, Knowledge Management]
style: fill
color: light
description: "Delving into the crucial role of memory and context for AI assistants, from custom TIL systems to evaluating specialized MCPs like mem0-mcp and context7."
---

For an AI to be a truly effective collaborator in software development, it needs more than just raw processing power; it requires robust mechanisms for accessing, retaining, and utilizing context and memory. My previous explorations into [AI environments](./2025-04-05-choosing-your-ai-co-pilot-cursor-cline-llm-quirks.html) and [orchestration tools](./2025-04-16-the-ai-orchestration-maze-evaluating-tools.html) continually underscored this need. This post focuses on my experiments with various approaches to bolstering AI memory and contextual understanding.

## Accessing External Knowledge: The Documentation Dilemma

One key aspect of context is providing AI with access to relevant documentation. I compared a couple of tools for this:

* **[context7](https://context7.com) ([project](https://github.com/context7/context7))**: Despite the hype, it struggled in a test case involving `markdownlint-cli2` and its underlying `markdownlint` library. Even when feeding both projects' docs and querying for a specific error code like "MD013" (even with ~100k token context), it yielded no results. The issue seemed to be that `markdownlint-cli2` is a wrapper and references `markdownlint` for error descriptions, a nuance `context7` didn't navigate effectively in this instance.
* **[git-mcp](https://github.com/idosal/git-mcp)**: In contrast, `git-mcp` successfully returned a reference for `markdownlint-cli2` and the full documentation for `markdownlint`. This suggested it might be more adept for smaller, interconnected project documentations.

This highlighted that effectively "teaching" an AI about a project's dependencies and documentation structure is non-trivial. Further testing is needed for larger projects, but the initial results favored more direct or perhaps simpler retrieval mechanisms for specific, linked documentation.

## Building a "Second Brain": TILs and Memory Banks

Beyond external docs, there's the project-specific and personal knowledge an AI needs.

* **Custom TIL (Today I Learned) System**: I initially ventured into creating a basic TIL feature. While a good learning exercise, I soon realized it was largely an attempt to reinvent existing wheels, especially as the [mcp-memory-service](https://github.com/doobidoo/mcp-memory-service) I was considering didn't seem like a long-term fit.
* **Exploring Memory MCPs**: This led to an exploration of dedicated memory tools and MCPs:
  * **[mem0-mcp](https://github.com/mem0ai/mem0-mcp/)**: My initial understanding of this was as a simple wrapper over a graph database. However, thanks to its web interface and another MCP implementation also named [mem0-mcp](https://github.com/pinkpixel-dev/mem0-mcp) (a completely different project by a different author!), I realized its true intent is more about improving user-agent communication rather than just being a persistent memory store. A TIL moment in itself!
  * **[assistant-mcp](https://github.com/pinecone-io/assistant-mcp)**: This primarily provides data retrieval capabilities.
  * **[cognee](https://github.com/topoteretes/cognee)**: Took a while to set up, and unfortunately, I encountered several [issues](https://github.com/topoteretes/cognee/issues/808) that led me to pause evaluation.
  * **[zettelkasten-mcp](https://github.com/entanglr/zettelkasten-mcp)**: Another tool on the list for managing structured notes.
* **Memory Bank Foundations**: The idea of combining the strengths of [cursor-memory-bank](https://github.com/vanzan01/cursor-memory-bank) with [roo-code-memory-bank](https://github.com/GreatScottyMac/roo-code-memory-bank) remained an underlying theme, and projects like [rUv-dev](https://github.com/ruvnet/rUv-dev) also appeared as potential enhancements or replacements for basic memory bank functionalities.

## Tools for Understanding: MCP Inspector

In this complex landscape of inter-tool communication, the MCP [inspector](https://github.com/modelcontextprotocol/inspector) proved to be an invaluable utility for debugging and gaining clarity on how different components were interacting (or failing to).

The journey to equip AI assistants with effective, persistent, and easily accessible memory is ongoing. The current ecosystem offers a plethora of specialized tools, each with unique approaches and varying degrees of maturity. Stitching them together into a cohesive and efficient "second brain" for AI remains a significant, but exciting, challenge.
