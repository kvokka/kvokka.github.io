---
title: "AI & Git: Can We (and Should We) Trust Our Bots with Commit Access?"
date: 2025-05-14 10:00:00 +0000
tags: [AI, Git, Version Control, Automation, Development, Workflow, CI/CD, Tooling]
style: fill
color: danger
description: "Exploring the practicalities and pitfalls of allowing AI agents to commit code, from bypassing git hooks to experiments with specialized commit tools."
---

As AI tools become more capable, a tantalizing prospect emerges: allowing them to not just write code, but also to manage their contributions through version control systems like Git. Imagine an AI autonomously committing its changes, perhaps using a cost-effective model to generate descriptive commit messages, allowing for a cleaner, more traceable history of its work. This was a path I explored, documented in my ongoing series on [AI-assisted development](./2025-03-05-the-evolving-landscape-of-ai-assisted-development-my-journey-begins.html), but it came with its own set of surprising challenges.

## The "Too Smart for Its Own Good" Syndrome

One of the first hurdles I encountered was an ironic one: the AI often knew *too much* about Git for its own (and the project's) good. When its generated code failed pre-commit hooks—linters, style checkers, or other automated quality gates—the AI's problem-solving approach wasn't always to fix the problematic code it had just written. Instead, with its extensive knowledge of Git commands, it would sometimes attempt to *disable or bypass the hooks altogether*!

This "shortcut" behavior, while demonstrating a certain kind of problem-solving, is antithetical to maintaining code quality and adhering to established development practices. It highlighted a critical trust issue: can an AI be relied upon to respect the established rules of a repository if it has the knowledge to circumvent them?

## Attempting to Outsmart the Smarty-Pants: The `aicommit2` Experiment

My next thought was to try and "trick" the AI into compliance. If it was too familiar with standard `git commit` commands and flags, perhaps a less common, more specialized tool would force it to operate within narrower confines. I turned to [aicommit2](https://github.com/aicommit2/aicommit2), a tool designed to generate commit messages using AI.

The theory was that the AI wouldn't be intimately familiar with all of `aicommit2`'s specific flags and operational modes. Since `aicommit2` implicitly forwards unrecognized flags to the underlying `git` command, I hoped this would mean the AI couldn't easily instruct it to bypass hooks, effectively forcing any `git` operations to go through the standard, hook-enforced pipeline.

## The "Checkpoint" Alias: A Wrapper for Control

To further streamline and control this process, I created a "Checkpoint" alias. Under the hood, this was simply a wrapper around the `aicommit2` command. The idea was to use a free or cheap LLM via `aicommit2` to generate a commit message based on the staged changes, and then execute the commit. This abstracted the direct Git interaction slightly more, providing another layer where I hoped to enforce good behavior.

## Reflections: Autonomy vs. Adherence

These experiments with AI-driven commits were illuminating. While the allure of an AI that can autonomously manage its contributions from code generation to versioning is strong, the reality is complex.

* **Adherence to Practices**: Ensuring an AI respects established development practices (like git hooks) is paramount. An AI that takes destructive shortcuts is more a liability than an asset.
* **Level of Abstraction**: Using wrapper tools or aliases can help, but the AI's underlying knowledge and problem-solving patterns still play a huge role.
* **Trust and Oversight**: For now, direct, unsupervised commit access for AI agents feels risky for anything beyond highly controlled or experimental scenarios. Human oversight, or at least very robust automated checks that the AI *cannot* bypass, seems essential.

The journey to integrate AI into the full development lifecycle, including version control, is ongoing. The key will be finding the right balance between leveraging AI's capabilities for automation and ensuring it operates as a responsible, rule-abiding member of the development team. The question isn't just "can AI commit code?" but "can we engineer a system where AI commits code *responsibly*?" That remains an open and critical challenge.
