---
name: privacy-data-check
description: Use this skill to check whether personal information, sensitive data, medical data, customer data, or internal confidential data is exposed in code, logs, documents, tests, or examples.
---

# Privacy Data Check

This skill checks whether personal or sensitive data is unnecessarily exposed.

## When to use

Use this skill when:

- Logs, screenshots, documents, SQL, API responses, or test data are shared.
- Work touches user, customer, employee, patient, payment, identity, or authentication data.
- A task involves data export, reporting, analytics, debugging, monitoring, or error logs.
- Examples or documentation may include real data.

## Check items

Inspect for:

- Names
- Phone numbers
- Email addresses
- Addresses
- Resident registration numbers or national IDs
- Patient or medical information
- Payment or billing data
- Account identifiers
- Internal employee data
- Production customer data
- Raw logs containing identifiers

## Output format

Use the following structure:

```md
## 개인정보/민감정보 점검 결과

## 확인된 데이터 유형

## 노출 위험 항목

## 마스킹 또는 샘플 데이터 대체 필요 항목

## 권장 조치

## 검증 상태
```

## Rules

- Do not repeat sensitive data in the response.
- Mask values before discussing examples.
- Prefer synthetic sample data in documentation and tests.
- If medical or patient-related information appears, mark it as high sensitivity.
- If the scope was not fully inspected, mark the result as 미확인.
