---
name: inspect-change
description: Review a diff, commit, branch, or pull request for concrete correctness, security, compatibility, and operability regressions. Use when code already changed and the user wants actionable review findings; not for reviewing a future plan.
---

# Inspect Change

Review the behavioral delta, not the apparent neatness of the patch. A useful finding names a demonstrable failure path, its impact, and the smallest relevant location.

## Outcome Contract

Understand the intended change, inspect affected callers and contracts, test high-risk claims where practical, and report only actionable findings supported by evidence.

For broad or high-risk changes, read [references/risk-lenses.md](references/risk-lenses.md) and apply the relevant lenses.

## Finding Threshold

A finding should contain:

- the condition that triggers the problem;
- the resulting incorrect or unsafe behavior;
- why the patch introduced or failed to handle it;
- a severity proportional to realistic impact.

## Hard Rules

- Prioritize correctness and risk over formatting preferences.
- Inspect enough surrounding code to confirm ownership, callers, and existing safeguards.
- Do not report hypothetical issues that require implausible preconditions or contradict repository behavior.
- Do not hide meaningful findings inside a summary.
- If no actionable finding survives verification, explicitly report that outcome and describe the remaining test gap.

## Output

List findings from highest to lowest severity with precise file locations. Keep the summary secondary. Separate actionable defects from optional improvements.
