---
name: carry-context
description: Produce a compact, evidence-based handoff for another agent, developer, or future session to continue unfinished work. Use when pausing, switching owners, nearing a context limit, or transferring an investigation.
---

# Carry Context

A handoff preserves decisions and momentum, not the transcript. The next executor should know the target, current truth, why key choices were made, and the safest next action without rediscovering the whole task.

## Outcome Contract

Capture:

- objective and completion state;
- verified facts and relevant evidence;
- decisions made and their rationale;
- files, systems, branches, or artifacts touched;
- commands or checks already run and their outcomes;
- unresolved risks, blockers, and assumptions;
- the next concrete action.

## Hard Rules

- Distinguish completed work from proposed work and from unverified belief.
- Include exact identifiers and paths needed to resume, but never copy secrets or credentials.
- Preserve failed approaches only when they prevent repetition or constrain the solution.
- Do not bury blockers in chronology.
- Keep the handoff self-contained, but link to durable artifacts instead of pasting large outputs.

## Output

Use `Goal`, `Current state`, `Decisions`, `Evidence`, `Remaining work`, `Risks`, and `Next action`. Omit empty sections and avoid a turn-by-turn narrative.
