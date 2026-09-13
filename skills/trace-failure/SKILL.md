---
name: trace-failure
description: Diagnose a reproducible or intermittent software failure by building an evidence chain from symptom to root cause. Use for bugs, regressions, flaky behavior, crashes, and unexplained operational errors; not for general code review.
---

# Trace Failure

Turn “something is wrong” into a falsifiable explanation. Fixing the first suspicious line is not success; the explanation must account for the observed symptom and survive a regression check.

## Outcome Contract

Establish a trustworthy reproduction or observation loop, isolate the failing boundary, identify the causal mechanism, and verify a proportionate fix without hiding the original failure.

## Evidence Chain

Keep four statements separate:

- `Observed`: directly seen in output, state, logs, or a controlled run.
- `Expected`: grounded in a requirement, contract, test, or prior known-good behavior.
- `Hypothesis`: a mechanism that could explain the gap.
- `Discriminator`: the cheapest check that separates this hypothesis from alternatives.

## Hard Rules

- Reproduce before modifying code when practical. If reproduction is impossible, preserve diagnostics and state the confidence limit.
- Change one causal variable at a time during diagnosis.
- Do not treat temporal proximity, a stack-frame location, or a passing rerun as proof of cause.
- Preserve the failing case as a regression test or durable diagnostic when its maintenance cost is justified.
- Do not broaden the fix beyond the demonstrated cause without separate evidence.

## Stop Conditions

Stop and report uncertainty when further progress requires unavailable production data, credentials, destructive experiments, or a user choice that changes intended behavior.

## Output

Report `Symptom`, `Evidence`, `Root cause`, `Fix`, `Verification`, and `Residual uncertainty`. Use “most likely cause” rather than “root cause” when the chain is incomplete.
