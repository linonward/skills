---
name: align-docs
description: Update existing documentation to match an implemented code or configuration change. Use when behavior, commands, interfaces, setup, or operational expectations changed and documentation may have drifted.
---

# Align Docs

Documentation should describe the product that now exists, at the decision point where a reader needs it. The task is synchronization, not a general rewrite.

## Outcome Contract

Identify documentation claims invalidated by the change, update the smallest authoritative set, and verify examples, links, commands, and terminology against the implementation.

## Core Stance

Start from the behavioral delta. Search for old names, commands, defaults, outputs, screenshots, and assumptions across user and operator documentation.

## Hard Rules

- Do not document planned behavior as shipped behavior.
- Prefer one authoritative explanation with links over duplicated instructions that will drift.
- Preserve the existing documentation voice and information architecture unless they block comprehension.
- Update removal and migration guidance when a reader can still encounter the old behavior.
- Treat executable examples as interfaces: validate them when practical.

## Output

Summarize which reader-visible claims changed, list the documentation updated, and call out any intentionally undocumented internal change or remaining gap.
