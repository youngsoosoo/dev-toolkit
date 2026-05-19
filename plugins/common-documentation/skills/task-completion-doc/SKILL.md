---
name: task-completion-doc
description: Use this skill to write a task completion document after development, documentation, review, testing, or operational work.
---

# Task Completion Document

This skill writes a clear task completion document that can be used in issue trackers, internal docs, or team updates.

## When to use

Use this skill when:

- A task is completed or partially completed.
- Work results need to be shared with teammates.
- Implementation, testing, deployment, or verification details must be recorded.
- The user asks for a completion note, issue comment, Plane/Jira comment, or handoff summary.

## Output format

Use the following structure:

```md
## 1. 작업 개요

## 2. 작업 범위

## 3. 주요 변경 사항

## 4. 테스트 및 검증 내역

## 5. 배포 시 주의사항

## 6. 남은 이슈 및 후속 작업
```

## Rules

- Do not claim completion for work that was not performed.
- Mark unverified items as 미검증.
- Include deployment or rollback notes if relevant.
- Avoid unnecessary technical depth unless the document is for developers.
- Mask sensitive data.
