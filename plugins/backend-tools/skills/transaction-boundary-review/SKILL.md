---
name: transaction-boundary-review
description: Use this skill to review transaction boundaries, data consistency, rollback behavior, concurrency, and side effects in backend services.
---

# Transaction Boundary Review

This skill reviews transaction design and data consistency risks in backend code.

## When to use

Use this skill when:

- A service writes or updates data.
- Multiple repositories or external systems are involved.
- Transaction propagation or rollback behavior is unclear.
- Events, cache updates, messages, or external calls happen near DB writes.
- Concurrency or duplicate request risks exist.

## Check items

Review:

- Transaction boundary location
- Read-only versus write transactions
- Rollback conditions
- Checked and unchecked exception behavior
- External API calls inside transactions
- Cache updates inside or after transactions
- Event/message publication timing
- Concurrency and idempotency
- Partial failure scenarios

## Output format

Use the following structure:

```md
## 트랜잭션 리뷰 결과

## 데이터 정합성 리스크

## 롤백/부분 실패 시나리오

## 동시성/중복 요청 리스크

## 개선안

## 테스트 케이스
```

## Rules

- Do not assume rollback behavior without checking exception and transaction configuration.
- External calls inside transactions should be treated as risk unless justified.
- Cache and message side effects must be checked for consistency.
- If DB schema or lock behavior needs deeper review, route to `dba-tools`.
