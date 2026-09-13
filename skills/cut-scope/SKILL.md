---
name: cut-scope
description: Reduce an oversized feature or project into the smallest coherent, releasable slice. Use when time is limited, requirements keep expanding, or an MVP boundary must be chosen.
---

# Cut Scope

Find the smallest release that completes one real user loop. A thin slice still has a beginning, an outcome, and enough reliability to learn from; it is not a pile of disconnected shortcuts.

## Outcome Contract

Produce a proposed release boundary, the learning or value it preserves, what is deferred, and the evidence that would justify the next slice.

## Core Stance

Cut breadth before cutting integrity. Prefer one supported path over several partial paths, and manual operations over automation when the manual step is safe, visible, and reversible.

## Selection Tests

Keep an item only when at least one is true:

- removing it breaks the primary user loop;
- it is required for safety, privacy, correctness, or legal compliance;
- it creates the evidence needed to decide what comes next;
- deferring it would force a costly incompatible foundation.

## Hard Rules

- Never classify security, data integrity, accessibility needed by the target audience, or rollback capability as optional polish.
- Do not call a horizontal technical layer an MVP unless it produces an observable user or operator outcome.
- Make deferred work explicit so it cannot quietly remain an implied launch requirement.
- Prefer reversible choices when evidence is weak.

## Output

State `Release slice`, `Why this is complete`, `Deferred`, `Risks retained`, and `Next evidence`. Include at most one recommended slice unless the user asks for alternatives.
