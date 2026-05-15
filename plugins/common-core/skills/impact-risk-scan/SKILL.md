---
name: impact-risk-scan
description: Use this skill to scan common impact scope and risks before making changes, writing implementation plans, or finalizing work.
---

# Impact Risk Scan

This skill identifies common impact areas and risks before work proceeds too far.

## When to use

Use this skill when:

- A task may change existing behavior.
- The scope affects multiple files, systems, roles, or users.
- There may be regression risk.
- The task touches data, external integrations, operations, release flow, or user-facing behavior.
- The user asks whether a change is safe.

## Core responsibilities

- Identify affected areas.
- Separate user, data, operational, and regression impacts.
- Identify areas requiring specialized review.
- Make risks visible before implementation or release.

## Output format

Use the following structure:

```md
## 영향 범위

## 사용자 영향

## 데이터 영향

## 운영 영향

## 회귀 리스크

## 추가 검토 필요 영역
```

## Risk categories

Check the following categories when relevant:

- User-facing behavior
- API contract
- Data consistency
- Database schema or query behavior
- Cache behavior
- Authentication and authorization
- External system integration
- Batch or scheduled jobs
- Logging and monitoring
- Deployment and rollback
- Documentation and communication

## Rules

- Do not treat this as a full security review. Route security-specific items to `common-security`.
- Do not treat this as a full domain review. Route domain-specific issues to the appropriate plugin.
- If no meaningful risk exists, state why.
- If a risk cannot be evaluated from available context, mark it as 확인 필요.
