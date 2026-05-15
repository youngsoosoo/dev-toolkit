---
name: final-response-standard
description: Use this skill when summarizing work results, reporting validation status, or finalizing a response after analysis, implementation, review, or documentation work.
---

# Final Response Standard

This skill standardizes how work results are reported back to the user.

## When to use

Use this skill when:

- A task is complete or partially complete.
- Work results need to be summarized.
- Validation, testing, or verification status must be reported.
- There are remaining risks or follow-up tasks.
- The assistant must distinguish completed work from assumptions or unverified items.

## Core responsibilities

- Clearly state what was completed.
- Clearly state what was not completed.
- Report verification and testing status.
- Identify remaining issues and risks.
- Avoid overstating completion.

## Output format

Use the following structure when appropriate:

```md
## 완료한 작업

## 확인한 내용

## 검증 결과

## 남은 이슈

## 다음 작업
```

## Rules

- Do not claim tests passed unless tests were actually run and passed.
- Do not claim a file was changed unless the change was actually made.
- If work was partially completed, say so directly.
- If verification was not performed, mark it as 미검증.
- If a tool failed or access was unavailable, mention the limitation clearly.
- Keep the final response concise unless the user asks for detailed documentation.
