---
name: production-safety-check
description: Use this skill to check whether a task may affect production systems, shared environments, databases, caches, deployments, load tests, or irreversible operations.
---

# Production Safety Check

This skill checks whether a task is safe to execute or finalize from an operations perspective.

## When to use

Use this skill when:

- A task may affect production, staging, or shared environments.
- The task includes DB changes, Redis changes, deployment, rollback, migration, or infrastructure changes.
- The task includes load testing or performance testing.
- A command could modify data, delete resources, restart services, or change access permissions.
- The user asks whether an operation is safe.

## Check items

Inspect for:

- Production DB changes
- Production Redis/cache changes
- Data migration scripts
- Delete/update commands
- Load tests or stress tests
- Deployment or rollback commands
- Service restart commands
- Permission or access changes
- External API side effects
- Irreversible operations

## Output format

Use the following structure:

```md
## 운영 안전 점검 결과

## 운영 영향 가능성

## 위험 명령 또는 변경 사항

## 승인 필요 여부

## 롤백/복구 필요 사항

## 권장 조치

## 검증 상태
```

## Rules

- Do not execute production-impacting commands without explicit user approval.
- Do not run load tests against production.
- Do not apply DB migrations without rollback notes.
- Do not claim operational safety unless the relevant environment and command scope were checked.
- If the environment is unclear, treat it as potentially shared or production-like.
