---
name: test-strategy
description: Use this skill to define a test strategy before or during development, including unit, integration, regression, E2E, and manual verification scope.
---

# Test Strategy

This skill defines the testing approach for a development task.

## When to use

Use this skill when:

- A task changes behavior.
- Tests need to be planned before implementation.
- Existing tests may need updates.
- The user asks what should be tested.
- A change may introduce regression risk.

## Test categories

Consider the following categories:

- Unit tests
- Integration tests
- API or contract tests
- Regression tests
- E2E tests
- Manual verification
- Performance or load tests
- Security or production-safety checks

## Output format

Use the following structure:

```md
## 테스트 전략

## 테스트 대상

## 단위 테스트

## 통합 테스트

## 회귀 테스트

## 수동 검증

## 성능/부하 테스트 필요 여부

## 미검증 리스크
```

## Rules

- Do not claim tests are complete just because a strategy exists.
- If performance testing is needed, identify whether it is safe to run.
- Route production or security-sensitive tests to `common-security`.
- Route domain-specific tests to the appropriate specialized plugin.
