---
name: decision-record
description: Use this skill to write an Architecture Decision Record or lightweight decision note that documents context, options, decision, rationale, and consequences.
---

# Decision Record

This skill writes a decision record for technical, product, process, or operational decisions.

## When to use

Use this skill when:

- A meaningful technical or process decision was made.
- Several options were considered.
- Future readers need to understand why a choice was made.
- A decision affects architecture, workflow, security, operations, or team process.

## Output format

Use the following structure:

```md
## 결정 주제

## 배경

## 검토한 선택지

## 결정 내용

## 결정 이유

## 영향 및 트레이드오프

## 후속 작업
```

## Rules

- Record why the decision was made, not just what was decided.
- Include rejected alternatives when useful.
- Mention trade-offs honestly.
- Do not present tentative opinions as finalized decisions.
- If the decision is not final, mark it as 초안 or 검토 중.
