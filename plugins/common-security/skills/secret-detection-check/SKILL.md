---
name: secret-detection-check
description: Use this skill to check whether code, documents, logs, configuration, or examples expose secrets such as API keys, tokens, passwords, credentials, or private keys.
---

# Secret Detection Check

This skill checks whether secrets or credentials are exposed before work is finalized, committed, shared, or documented.

## When to use

Use this skill when:

- Code, configuration, logs, or documentation may contain credentials.
- A user shares environment variables, API examples, curl commands, headers, or error logs.
- A change adds new authentication, external API integration, deployment settings, or secret handling.
- Work is being prepared for commit, PR, release, or documentation.

## Check items

Inspect for:

- API keys
- Access tokens
- Refresh tokens
- Session IDs
- Passwords
- Private keys
- Certificates
- Authorization headers
- Database URLs with credentials
- Cloud provider credentials
- Webhook secrets
- `.env` values

## Output format

Use the following structure:

```md
## Secret 점검 결과

## 확인된 위험 항목

## 마스킹 또는 제거 필요 항목

## 권장 조치

## 검증 상태
```

## Rules

- Do not repeat raw secrets back to the user.
- Mask sensitive values using a safe format such as `sk-***`, `Bearer ***`, or `password=***`.
- If a secret appears to be exposed, recommend rotation or revocation.
- If the content cannot be inspected, mark the result as 미확인.
- Do not claim the repository is secret-free unless the relevant files were actually checked.
