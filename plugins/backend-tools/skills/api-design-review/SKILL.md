---
name: api-design-review
description: Use this skill to review backend API design, request/response contracts, validation rules, error responses, pagination, idempotency, and compatibility.
---

# API Design Review

This skill reviews backend API design and API contract quality.

## When to use

Use this skill when:

- Designing a new API.
- Changing request or response DTOs.
- Reviewing validation, error handling, pagination, sorting, or filtering.
- Checking backward compatibility.
- Coordinating API contracts with frontend, mobile, or external systems.

## Check items

Review:

- Endpoint naming and responsibility
- Request/response schema
- Validation rules
- Error response consistency
- HTTP method and status code usage
- Pagination, sorting, and filtering
- Idempotency and retry behavior
- Backward compatibility
- API documentation needs

## Output format

Use the following structure:

```md
## API 설계 리뷰 결과

## 계약 변경 사항

## 호환성 리스크

## 검증/예외 처리

## 클라이언트 영향

## 개선안
```

## Rules

- Identify breaking changes clearly.
- Mention frontend/mobile/external integration impact when relevant.
- Do not change API contracts without noting compatibility concerns.
- If API behavior is unclear, mark it as 확인 필요.
