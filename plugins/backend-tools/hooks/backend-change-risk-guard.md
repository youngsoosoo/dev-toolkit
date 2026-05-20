# Backend Change Risk Guard

This hook guideline defines checks that should happen before or after backend code changes.

## Purpose

Reduce backend change risk by requiring the right reviews when sensitive backend areas are modified.

## Guarded backend change categories

Treat the following as backend risk signals:

- API contract or DTO changes
- Service layer business logic changes
- Transaction boundary changes
- Repository, JPA, JPQL, or native query changes
- Redis/cache key, TTL, or invalidation changes
- Exception handling or validation changes
- External API integration changes
- Authentication or authorization-related changes

## Required confirmation

Before finalizing backend changes, confirm:

```md
## Backend 변경 사전 확인

- API 계약 변경 여부:
- 트랜잭션 변경 여부:
- DB/JPA/쿼리 변경 여부:
- Redis/캐시 변경 여부:
- 테스트 계획:
- 운영 영향 여부:
```

## Rules

- If API contract changes, run `api-design-review`.
- If transaction behavior changes, run `transaction-boundary-review`.
- If JPA or query behavior changes, run `jpa-query-review`.
- If Redis or cache behavior changes, run `redis-cache-design`.
- If production impact exists, involve `common-security`.

## Future implementation note

This file is currently a guideline document. It can later be converted into a real Claude Code hook or shell guard when the team's backend workflow rules are finalized.
