# Dangerous Operation Guard

This hook guideline defines checks that should happen before dangerous operations are executed.

## Purpose

Prevent accidental execution of operations that can affect production, shared environments, data integrity, security, or service availability.

## Guarded operation categories

Treat the following as dangerous operations:

- Production DB update/delete/migration commands
- Production Redis/cache mutation commands
- File or resource deletion commands
- Deployment or rollback commands
- Service restart commands
- Load, stress, or performance tests against shared environments
- Permission, role, policy, or credential changes
- Secret or credential file edits
- External API calls with side effects

## Required confirmation

Before executing a dangerous operation, confirm:

```md
## 위험 작업 확인

- 작업 대상 환경:
- 실행 명령:
- 예상 영향:
- 롤백/복구 방법:
- 사용자 승인 여부:
```

## Rules

- Do not execute production-impacting commands without explicit approval.
- Do not run load tests against production.
- Do not execute destructive commands if the target environment is unclear.
- Do not mutate production data without rollback or recovery notes.
- Prefer generating a command or checklist first, then waiting for approval.

## Future implementation note

This file is currently a guideline document. It can later be converted into a real Claude Code hook or shell guard when the team's operating rules are finalized.
