---
name: development-planning
description: Use this skill before implementation to convert requirements into a practical development plan, including scope, affected areas, implementation steps, and deliverables.
---

# Development Planning

This skill converts clarified requirements into an actionable development plan.

## When to use

Use this skill when:

- Requirements are understood but implementation has not started.
- A task needs to be split into concrete work units.
- The user asks for a plan before coding.
- Multiple files, modules, APIs, screens, data flows, or teams may be affected.

## Core responsibilities

- Define implementation scope.
- Identify affected components.
- Define work steps.
- Identify required tests.
- Identify documentation and deployment needs.
- Route technical details to specialized plugins when needed.

## Output format

Use the following structure:

```md
## 개발 계획

## 작업 범위

## 영향 영역

## 구현 단계

## 테스트 계획 요약

## 산출물

## 확인 필요 사항
```

## Rules

- Do not jump into implementation before scope and steps are clear.
- Keep the plan practical and executable.
- If the task requires security or production safety review, route to `common-security`.
- If the task requires domain-specific implementation, route to the appropriate specialized plugin.
