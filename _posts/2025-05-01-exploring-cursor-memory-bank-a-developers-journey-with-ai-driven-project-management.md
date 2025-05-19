---
title: "Exploring `cursor-memory-bank`: A Developer's Journey with AI-Driven Project Management"
date: 2025-05-01 00:00:00 +0000
tags: [AI, Project Management, Cursor, Development, Workflow, cursor-memory-bank]
style: "fill"
color: "primary"
description: "A developer's experience exploring the vanzan01/cursor-memory-bank project to streamline workflows in Cursor, including critiques and adaptation plans."
comments: true
---

## Introduction

As a developer diving into AI-assisted project management, I explored the [`vanzan01/cursor-memory-bank`](https://github.com/vanzan01/cursor-memory-bank) project to streamline my workflow in [Cursor](https://cursor.com). This blog post shares my experience, critiques, and plans for adapting this framework, based on my project notebook notes, with a brief overview of its features.

## What is `cursor-memory-bank`?

The `cursor-memory-bank` is a modular framework designed to enhance AI-driven development in Cursor. It uses custom modes (VAN, PLAN, CREATIVE, IMPLEMENT) to guide AI through structured workflows, maintaining persistent memory via documentation files like `tasks.md` and `activeContext.md`. It leverages [Mermaid diagrams](https://mermaid-js.github.io/mermaid/) for visual process mapping and supports task complexity scaling, making it ideal for projects needing consistent AI context across sessions.

## My Journey with `cursor-memory-bank`

### Initial Impressions

I was drawn to `cursor-memory-bank` for its promise of dynamic project management, a step beyond static Product Requirement Documents (PRDs). I forked it as a Git submodule to avoid dependency issues and began experimenting. However, my initial use revealed flaws: the AI had too much freedom, hallucinating unwanted files and duplicating content. It needed stricter rules to align with my goal of a controlled AI workflow, inspired by my PRD meta-script idea.

### Deep Dive and Challenges

Using [Gemini 2.5 Pro](https://deepmind.google/technologies/gemini/), I hit a snag when the AI suggested code fixes but failed to commit changes due to undocumented task creation workflows. A thorough review of the project’s docs showed it was geared toward bootstrapping, not ongoing management, and seemed optimized for older models like [Claude Sonnet 3.7](https://www.anthropic.com/claude). The lack of essential task management rules and outdated workflows made it feel incomplete for my needs. Still, I loved the diagram-driven approach, which added clarity to AI interactions.

### Cursor’s Limitations

Integrating `cursor-memory-bank` with Cursor was tricky. Cursor lacks a `/new_task` feature, cluttering context, and doesn’t support cheap models for simple tasks. My attempts to feed file paths for rules were inefficient, and a manual rules loader hack failed. After consulting my AI agent, I settled on using an internal variable to manage rules, a promising workaround for Cursor’s constraints.

### Plans for Adaptation

Despite its flaws, I see potential in `cursor-memory-bank`. My plan is to use it as a base, combining it with [`roo-code-memory-bank`](https://github.com/GreatScottyMac/roo-code-memory-bank) for a modular rule system. This setup will support my current Cursor workflow and ease future migration to [Roo Code](https://github.com/RooVetGit/Roo-Code). I’ll extend task management by adding explicit creation rules to `tasks.md`, inspired by [task-master](https://www.task-master.dev/), and tighten AI constraints to prevent hallucination. Tools like [`envmcp`](https://www.npmjs.com/package/envmcp) and [`composio`](https://composio.dev/) will streamline MCP integration, addressing token usage concerns.

## Key Takeaways

- **Pros**: Modular structure, persistent memory, and visual diagrams make `cursor-memory-bank` a solid starting point for AI-driven projects.
- **Cons**: Loose AI constraints, incomplete task workflows, and outdated model assumptions limit its out-of-the-box utility.
- **Next Steps**: Merge with `roo-code-memory-bank`, enhance task creation, and leverage MCP tools for efficiency.

## Conclusion

My journey with `vanzan01/cursor-memory-bank` highlighted its potential and pitfalls. While it didn’t fully meet my needs, its framework is a foundation I can build upon. By combining it with other tools and tightening rules, I’m optimistic about creating a robust AI-assisted workflow. Stay tuned for updates as I refine this setup!

## Update of 2025-05-15

After Gemini 2.5 May update this project became a total overkill just,
producing worse results than the clear setup or a simple memory bank idea.
It was ahead of its time, but now it is just a mess.

Important takeaway:

- Diagrams are great to make the workflow clear. Claude Sonnet 3.5 - 3.7 is great in
creating them, while Gemini 2.5 needs some extra tweaks to make them rendering.
