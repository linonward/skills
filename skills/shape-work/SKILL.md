---
name: shape-work
description: Turn a fuzzy product or engineering request into a testable outcome, explicit boundaries, and a workable brief before implementation. Use when the requested result, audience, constraints, or definition of done are unclear.
---

# Shape Work

Convert ambiguity into a decision-ready brief without pretending uncertainty has disappeared. The goal is not a long specification; it is enough shared clarity to act without building the wrong thing.

## Outcome Contract

Produce a brief that states:

- who needs the outcome and what changes for them;
- the smallest observable result that would count as success;
- constraints already fixed by the user or environment;
- assumptions being made to keep work moving;
- unresolved choices that would materially change the solution;
- a concrete definition of done.

## Core Stance

Separate desired outcomes from suggested implementations. A request such as “add a dashboard” may describe a solution, while the real need is faster anomaly detection.

Resolve cheap uncertainty through inspection before asking questions. Ask only when the answer changes scope, architecture, risk, or an external side effect.

## Hard Rules

- Preserve explicit user choices unless they conflict with evidence, safety, or feasibility; surface that conflict instead of silently rewriting the goal.
- Label assumptions as assumptions. Do not present inferred requirements as agreed facts.
- Do not invent metrics merely to make the brief look measurable. Use observable acceptance evidence when a meaningful numeric target is unavailable.
- Stop shaping once the next action is clear enough to execute or plan. Extra detail is not automatically extra certainty.

## Output

Return a compact brief with `Outcome`, `In scope`, `Out of scope`, `Constraints`, `Assumptions`, `Open decisions`, and `Done when`. Omit empty sections.
