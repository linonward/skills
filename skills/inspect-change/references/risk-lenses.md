# Change Review Risk Lenses

Select lenses based on the changed surface and expected blast radius.

## Contracts

- Callers still satisfy new preconditions.
- Return values, errors, events, and serialized shapes remain compatible where required.
- Defaults preserve existing behavior unless the change intentionally breaks it.

## State and Concurrency

- Reads and writes remain atomic at the intended boundary.
- Retries, duplicate delivery, reordering, and cancellation do not corrupt state.
- Cache invalidation and lifecycle cleanup cover all exit paths.

## Trust Boundaries

- Authorization is enforced at the resource, not only the UI.
- Untrusted input is constrained before reaching interpreters, storage, or outbound requests.
- Logs and errors do not expose secrets or sensitive user data.

## Operations

- Partial dependency failure has an intentional outcome.
- Timeouts and retry budgets are bounded.
- Operators can detect and distinguish the new failure modes.

## Tests

- Tests exercise behavior rather than implementation trivia.
- The risky branch would fail before the patch or when the patch regresses.
- Mocks do not erase the contract under review.
