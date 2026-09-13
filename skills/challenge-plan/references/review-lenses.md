# Plan Review Lenses

Use only the lenses that could materially change this plan.

## Value and Scope

- Does the sequence reach an observable outcome early?
- Is optional breadth mixed into the critical path?
- Does the plan solve the stated problem rather than only implement the requested artifact?

## Architecture and Contracts

- Which existing boundaries, callers, or ownership rules does the change cross?
- Are public interfaces and compatibility expectations explicit?
- Is new abstraction justified by current variation rather than imagined reuse?

## Data and State

- Can old and new versions coexist during rollout?
- What happens to partially migrated or malformed state?
- How are migration completeness and rollback verified?

## Failure and Operations

- What fails independently, and what is the user-visible behavior?
- Is retry safe, bounded, and idempotent where needed?
- Will logs, metrics, or probes distinguish success from silent degradation?

## Verification

- Which test protects the behavior most likely to regress?
- Which runtime path proves the user-facing outcome?
- What evidence is captured before declaring completion?
