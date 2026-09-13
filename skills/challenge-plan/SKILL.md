---
name: challenge-plan
description: Review an implementation plan before coding to expose missing decisions, unsafe sequencing, and unverifiable outcomes. Use when a concrete plan exists and the user wants it challenged or strengthened.
---

# Challenge Plan

Treat the plan as a set of claims that must survive contact with the codebase, users, data, and operations. The review succeeds when it changes a weak decision, not when it produces many comments.

## Outcome Contract

Identify the few issues most likely to invalidate the plan, verify them against available evidence, and return a corrected sequence with explicit validation points.

## Core Stance

Review highest-cost assumptions first. A missing detail matters only when it can change feasibility, architecture, risk, sequencing, or acceptance.

For a substantial plan, read [references/review-lenses.md](references/review-lenses.md) and select only the lenses relevant to the change.

## Hard Rules

- Inspect the affected system before claiming the plan fits or conflicts with it.
- Distinguish a blocker from an improvement and from an open question.
- Do not demand premature abstractions for hypothetical future use.
- Require a migration and rollback story when persistent data, public contracts, permissions, or traffic routing change.
- Require observable acceptance evidence, not only build or type-check success.

## Output

Lead with a verdict: `ready`, `ready after changes`, or `not ready`. Then list findings by impact, followed by the revised plan. If the plan is already sound, say so and name the evidence checked.
