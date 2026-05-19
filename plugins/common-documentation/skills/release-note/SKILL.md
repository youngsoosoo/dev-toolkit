---
name: release-note
description: Use this skill to write release notes that summarize changes, user impact, technical notes, deployment considerations, and rollback guidance.
---

# Release Note

This skill writes a release note for internal or external release communication.

## When to use

Use this skill when:

- A feature, fix, refactor, or operational change is being released.
- Stakeholders need to understand what changed.
- Deployment, rollback, or verification details should be recorded.

## Output format

Use the following structure:

```md
## 릴리즈 개요

## 포함된 변경 사항

## 사용자 영향

## 기술 참고 사항

## 배포 및 검증 사항

## 롤백 기준

## 알려진 이슈
```

## Rules

- Keep user-facing impact clear.
- Separate technical notes from business-facing changes.
- Do not include sensitive internal data in external release notes.
- If rollback is not applicable, state why.
- If verification is incomplete, mark it as 미검증.
