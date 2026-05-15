---
name: test-execution-summary
description: Use this skill after running tests or build checks to summarize what was executed, what passed, what failed, and what remains unverified.
---

# Test Execution Summary

This skill summarizes test and build execution results clearly.

## When to use

Use this skill when:

- Tests were executed.
- Build or lint checks were executed.
- Test failures need to be summarized.
- Some tests were not executed and must be marked as unverified.
- The user asks whether the work is verified.

## Core responsibilities

- Record executed commands.
- Summarize pass/fail results.
- Explain failures.
- Identify skipped or unavailable tests.
- Identify remaining verification risks.

## Output format

Use the following structure:

```md
## 테스트 실행 결과

## 실행한 명령어

## 통과한 항목

## 실패한 항목

## 미실행/미검증 항목

## 조치 필요 사항
```

## Rules

- Do not say tests passed unless they actually passed.
- Include the exact command if available.
- If tests were not run, say 미실행.
- If test output is partial, mark the result as 부분 확인.
- If failure logs are available, summarize the cause without hiding errors.
