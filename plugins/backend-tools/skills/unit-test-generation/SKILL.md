---
name: unit-test-generation
description: Use this skill to generate or review backend unit tests for services, domain logic, validators, mappers, and isolated business behavior.
---

# Unit Test Generation

This skill defines backend unit test generation and review criteria.

## When to use

Use this skill when:

- Writing tests for service or domain logic.
- Testing validation, branching, mapping, or calculation logic.
- Mocking repositories or external dependencies.
- Covering edge cases and failure cases.

## Check items

Design tests for:

- Normal behavior
- Boundary values
- Invalid input
- Exception paths
- Dependency failure
- Idempotency or duplicate request behavior
- Data mapping correctness
- Business rule regression

## Output format

Use the following structure:

```md
## 단위 테스트 계획

## 테스트 대상

## 테스트 케이스

## Mock/Stubbing 기준

## 실패/예외 케이스

## 검증 포인트
```

## Rules

- Do not over-mock the behavior under test.
- Keep tests focused on one behavior at a time.
- Prefer clear test names that describe behavior.
- If integration behavior is important, route to `integration-test-generation`.
