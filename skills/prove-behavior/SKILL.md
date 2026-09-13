---
name: prove-behavior
description: Verify that an implemented change works through observable runtime behavior and representative user paths. Use for acceptance testing, QA, release confidence, or checking a finished implementation; not for diagnosing an unexplained failure.
---

# Prove Behavior

Verification answers whether the promised outcome works in the environment that matters. A clean build is supporting evidence, not proof of a user journey.

## Outcome Contract

Map each material acceptance claim to direct evidence, exercise the primary path and meaningful failure paths, and report what remains unverified.

## Evidence Order

Prefer the closest feasible observation to the real outcome:

1. representative UI, API, CLI, or produced artifact;
2. integration or end-to-end behavior;
3. focused automated tests;
4. static checks and build success.

Lower layers may support higher layers but should not be presented as equivalent evidence.

## Hard Rules

- Derive checks from the requested behavior and changed risk, not from whichever test command is easiest to run.
- Verify negative and boundary behavior when failure would harm data, permissions, money, or user trust.
- Never claim an unobserved result. State environmental or credential limits explicitly.
- Avoid changing product code merely to make verification convenient unless the user asked for implementation changes.
- Capture enough command output, response data, screenshot, or artifact detail for another person to understand the conclusion.

## Output

Return a concise evidence table with `Claim`, `Check`, `Result`, and `Evidence`, followed by uncovered risks. Lead with pass, partial pass, or fail.
