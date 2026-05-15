---
name: git-work-preparation
description: Use this skill before starting development work to inspect Git status, move from the correct base branch, pull latest changes, and prepare a task branch safely.
---

# Git Work Preparation

This skill prepares a safe Git working state before implementation work starts.

## When to use

Use this skill when:

- A new development task starts.
- The user wants Claude to modify files.
- Work should begin from a specific base branch.
- A task branch should be created before implementation.
- Local changes may exist and need to be protected.

## Required checks

Check the following before creating or switching branches:

```bash
git branch --show-current
git status --short
```

## Recommended flow

1. Check current branch.
2. Check uncommitted changes.
3. If uncommitted changes exist, stop and report them.
4. Move to the agreed base branch.
5. Pull latest changes.
6. Create a task branch.
7. Confirm the active branch.

## Output format

Use the following structure:

```md
## Git 준비 결과

## 현재 브랜치

## 로컬 변경사항

## 기준 브랜치 동기화 결과

## 생성한 작업 브랜치

## 주의사항
```

## Branch naming guide

Use a clear branch type:

```text
feature/{ticket-id}-{short-description}
fix/{ticket-id}-{short-description}
refactor/{ticket-id}-{short-description}
chore/{ticket-id}-{short-description}
```

## Rules

- Do not work directly on the base branch.
- Do not run checkout, pull, reset, or clean when uncommitted changes exist unless the user explicitly approves.
- Do not push a branch unless the user explicitly asks.
- If the base branch is unclear, identify it as 확인 필요.
- If pull fails, stop and report the reason.
