---
name: integration-test-generation
description: Use this skill to generate or review backend integration tests for APIs, repositories, databases, Redis, external integrations, and full request flows.
---

# Integration Test Generation

This skill defines backend integration test generation and review criteria.

## When to use

Use this skill when:

- Testing API endpoints or controller flows.
- Testing repository behavior with a real or embedded database.
- Testing Redis/cache behavior.
- Testing transaction boundaries or rollback behavior.
- Testing external integration behavior with stubs or test containers.

## Check items

Design tests for:

- API request/response flow
- Validation and error response
- DB persistence and query behavior
- Transaction rollback behavior
- Redis cache read/write/invalidation behavior
- External system failure or timeout
- Security or authorization behavior when relevant

## Output format

Use the following structure:

```md
## 통합 테스트 계획

## 테스트 범위

## 테스트 환경

## 테스트 데이터

## 주요 테스트 케이스

## 외부 의존성 처리

## 검증 포인트
```

## Rules

- Do not call production systems in integration tests.
- Use isolated test data.
- If DB schema, migration, or query plan is important, involve `dba-tools`.
- If Redis is involved, verify invalidation and fallback behavior.
- Mark tests as planned, written, or executed clearly.
