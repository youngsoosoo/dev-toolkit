---
name: jpa-query-review
description: Use this skill to review JPA, JPQL, native query usage, N+1 risks, fetch joins, pagination, query performance, and repository design.
---

# JPA Query Review

This skill reviews JPA and query usage in backend code.

## When to use

Use this skill when:

- Reviewing JPA repository methods.
- Reviewing JPQL or native queries.
- Checking query performance or N+1 risks.
- Reviewing pagination, fetch join, projections, or DTO queries.
- Replacing native queries or splitting complex queries.

## Check items

Review:

- N+1 query risk
- Fetch join correctness
- Pagination compatibility
- Projection versus entity loading
- Query complexity
- Index usage assumptions
- Count query behavior
- IN clause size and padding
- Native query necessity
- Transaction and flush impact

## Output format

Use the following structure:

```md
## JPA/쿼리 리뷰 결과

## 성능 리스크

## N+1/로딩 전략

## 페이징/카운트 영향

## 개선안

## 추가 DB 검토 필요 여부
```

## Rules

- Do not assume a query is slow without evidence.
- For execution plan, index, lock, or migration details, route to `dba-tools`.
- Prefer clarity and predictable performance over clever query restructuring.
- If Redis or cache is proposed, verify cache invalidation and consistency separately.
