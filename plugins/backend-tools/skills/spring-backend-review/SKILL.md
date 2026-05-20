---
name: spring-backend-review
description: Use this skill to review Java Spring Boot backend code for production stability, maintainability, exception handling, observability, and testability.
---

# Spring Backend Review

This skill reviews Spring Boot backend code from a production-oriented engineering perspective.

## When to use

Use this skill when:

- Reviewing service, controller, repository, configuration, or integration code.
- Checking whether backend code is safe for production.
- Refactoring Spring Boot code.
- Reviewing exception handling, logging, validation, or layering.

## Review priorities

Review in this order:

1. Production failure risk
2. Data consistency
3. Transaction boundary
4. Exception handling
5. Logging and observability
6. Testability
7. Maintainability
8. Code readability

## Output format

Use the following structure:

```md
## 결론

## 주요 문제

## 최소 수정안

## 구조 개선안

## 테스트 케이스

## 운영 체크포인트
```

## Rules

- Do not focus on style-only feedback first.
- Separate minimal fixes from structural improvements.
- If a risk is speculative, mark it as 추정.
- If code context is insufficient, state what additional files or information are needed.
