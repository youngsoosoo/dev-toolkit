# Workflow Preflight Guard

This hook guideline defines checks that should happen before development work starts.

## Purpose

Prevent unsafe or inconsistent development workflow, especially when Claude is expected to modify files or run commands.

## Guarded workflow categories

Treat the following as workflow risks:

- Working directly on the base branch
- Running `git pull` with uncommitted changes
- Switching branches with uncommitted changes
- Running destructive Git commands without approval
- Starting implementation before task scope is clear
- Claiming completion before tests or verification are attempted
- Preparing deployment notes without rollback or verification criteria

## Required confirmation

Before starting implementation, confirm:

```md
## Workflow 사전 확인

- 현재 브랜치:
- 로컬 변경사항:
- 기준 브랜치:
- 작업 브랜치:
- 테스트 계획:
- 배포 영향 여부:
```

## Rules

- Do not modify files before checking Git status when working in a repository.
- Do not pull, checkout, reset, clean, or rebase if uncommitted changes exist unless the user approves.
- Do not work directly on the base branch.
- Do not claim work is complete if verification was not attempted.
- If deployment impact exists, require deployment checklist.

## Future implementation note

This file is currently a guideline document. It can later be converted into a real Claude Code hook or shell guard when the team's workflow rules are finalized.
