---
name: deployment-checklist
description: Use this skill to prepare deployment, release, rollback, migration, and post-deployment verification checklists.
---

# Deployment Checklist

This skill prepares a deployment checklist for development work that may need release coordination.

## When to use

Use this skill when:

- A task is ready for deployment or release.
- DB, cache, configuration, environment, or external integration changes are included.
- Rollback or post-deployment verification is required.
- The user asks for deployment notes.

## Output format

Use the following structure:

```md
## 배포 체크리스트

## 선행 작업

## 배포 대상

## 환경 변수/설정 변경

## DB/캐시/마이그레이션 변경

## 배포 후 검증

## 롤백 기준

## 담당자 확인 사항
```

## Rules

- Do not mark deployment as safe if rollback criteria are missing for risky changes.
- If production impact exists, route to `common-security`.
- If DB migration exists, include rollback or recovery notes.
- If deployment is not required, say 배포 영향 없음.
