---
name: redis-cache-design
description: Use this skill to review Redis cache key design, data structure choice, TTL, invalidation, consistency, fallback behavior, and operational risks.
---

# Redis Cache Design

This skill reviews Redis caching and data structure design for backend systems.

## When to use

Use this skill when:

- Designing Redis keys or cache structures.
- Replacing DB reads with cache reads.
- Reviewing TTL, invalidation, or fallback logic.
- Using Redis String, Hash, Set, ZSet, List, or Stream.
- Pattern key lookup, multiGet, scan, or cache warming is involved.

## Check items

Review:

- Key naming and namespace
- Data structure choice
- TTL policy
- Cache invalidation timing
- Source of truth
- Cache consistency with DB
- Fallback behavior when Redis fails
- Avoiding KEYS in production
- SCAN or index key alternatives
- Serialization compatibility
- Memory growth risk

## Output format

Use the following structure:

```md
## Redis 캐시 설계 리뷰 결과

## Key/Data 구조

## 정합성/무효화 전략

## 장애/Fallback 전략

## 운영 리스크

## 개선안
```

## Rules

- Treat production KEYS pattern usage as risky unless clearly bounded.
- Do not recommend caching without invalidation strategy.
- Identify DB source-of-truth clearly.
- If the cache affects user-visible data, include regression and consistency tests.
