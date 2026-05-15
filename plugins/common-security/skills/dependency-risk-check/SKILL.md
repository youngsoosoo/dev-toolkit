---
name: dependency-risk-check
description: Use this skill to check risks from new or changed dependencies, libraries, packages, external APIs, SaaS integrations, permissions, or license exposure.
---

# Dependency Risk Check

This skill checks whether dependency or integration changes introduce security, operational, license, or maintenance risks.

## When to use

Use this skill when:

- A new library, package, SDK, or framework is added.
- A dependency version is upgraded or downgraded.
- A new external API, SaaS, webhook, or third-party service is integrated.
- Permissions, scopes, or credentials are changed.
- A package is used in production-critical paths.

## Check items

Inspect for:

- Package source and maintainer trust
- Version freshness and maintenance status
- Known security vulnerabilities
- License compatibility
- Transitive dependency risk
- Permission or OAuth scope expansion
- External API reliability and rate limits
- Data shared with third parties
- Rollback or removal difficulty

## Output format

Use the following structure:

```md
## 의존성 리스크 점검 결과

## 변경된 의존성/연동

## 보안 리스크

## 운영 리스크

## 라이선스/정책 리스크

## 권장 조치

## 검증 상태
```

## Rules

- Do not approve a dependency change without checking why it is needed.
- If vulnerability or license information is not available, mark it as 미확인.
- Prefer official, maintained, widely used dependencies.
- If the dependency handles sensitive data or credentials, require stronger review.
