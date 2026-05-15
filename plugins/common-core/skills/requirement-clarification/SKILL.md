---
name: requirement-clarification
description: Use this skill when a request is unclear, incomplete, ambiguous, or needs acceptance criteria before implementation or documentation work begins.
---

# Requirement Clarification

This skill clarifies a user's request before moving into implementation, documentation, review, or planning.

## When to use

Use this skill when:

- The request is ambiguous or incomplete.
- The expected output is not clearly defined.
- The scope is unclear.
- There are missing constraints, dependencies, or acceptance criteria.
- The task may affect multiple roles, systems, or documents.

## Core principles

- Separate confirmed information from assumptions.
- Do not invent requirements.
- Minimize unnecessary questions.
- If enough information exists to proceed, make reasonable assumptions and mark them explicitly.
- If a missing detail blocks correctness, identify it clearly.

## Output format

Use the following structure:

```md
## 요청 요약

## 현재 확인된 내용

## 불확실한 내용

## 확인 필요 사항

## 인수 조건

## 제외 범위
```

## Rules

- Keep the summary concise.
- Write in Korean by default unless the user uses another language.
- Do not move to implementation until critical blocking questions are resolved.
- If the task can proceed without clarification, list assumptions and continue.
