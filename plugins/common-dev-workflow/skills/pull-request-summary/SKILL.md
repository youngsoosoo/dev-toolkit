---
name: pull-request-summary
description: Use this skill to create a clear pull request summary, including purpose, changes, test results, review points, and deployment notes.
---

# Pull Request Summary

This skill creates a concise and review-friendly pull request summary.

## When to use

Use this skill when:

- A PR description is needed.
- Work changes need to be summarized for reviewers.
- Review points and test evidence should be documented.
- Deployment or rollback notes should be visible in a PR.

## Output format

Use the following structure:

```md
## 작업 개요

## 주요 변경 사항

## 영향 범위

## 테스트 결과

## 리뷰 포인트

## 배포/롤백 참고사항

## 관련 이슈
```

## Rules

- Keep the summary factual and review-oriented.
- Do not claim tests passed unless test evidence exists.
- Mention breaking changes or migration needs clearly.
- If there are follow-up tasks, include them.
- If deployment notes are irrelevant, say 해당 없음.
