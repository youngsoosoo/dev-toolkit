---
name: incident-report
description: Use this skill to write an incident, 장애, issue, or operational problem report with timeline, impact, cause, action, and prevention items.
---

# Incident Report

This skill writes an incident or operational issue report.

## When to use

Use this skill when:

- A production or shared environment issue occurred.
- A service interruption, error, data issue, deployment issue, or operational failure needs to be recorded.
- Root cause, timeline, impact, and prevention items need to be summarized.

## Output format

Use the following structure:

```md
## 1. 발생 개요

## 2. 발생 시간 및 타임라인

## 3. 영향 범위

## 4. 원인 분석

## 5. 조치 내용

## 6. 재발 방지 대책

## 7. 후속 작업
```

## Rules

- Separate confirmed cause from suspected cause.
- Include concrete times when available.
- Do not blame individuals.
- Include user, data, and operational impact when relevant.
- If root cause is not confirmed, mark it as 원인 확인 중.
