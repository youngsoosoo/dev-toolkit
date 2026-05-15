---
name: task-intake
description: Use this skill at the beginning of a task to classify the request, identify the relevant role-specific plugins, and define expected outputs.
---

# Task Intake

This skill classifies an incoming task and determines how it should be handled before detailed work begins.

## When to use

Use this skill when:

- A new task starts.
- The task spans multiple roles or systems.
- It is unclear whether the task is backend, frontend, DBA, data, DevOps, AI, documentation, or security-related.
- The user asks for planning, implementation, review, or documentation but the proper workflow is not obvious.

## Core responsibilities

- Classify the task type.
- Identify related roles and plugins.
- Define expected deliverables.
- Identify whether additional clarification, design, review, or validation is needed.
- Recommend the next workflow or specialized plugin.

## Output format

Use the following structure:

```md
## 작업 유형

## 관련 직군

## 필요한 플러그인

## 예상 작업 단계

## 예상 산출물

## 주의사항
```

## Plugin routing guide

- Use `common-dev-workflow` for general development workflow, Git preparation, PR, testing, and deployment flow.
- Use `common-documentation` for reports, summaries, release notes, and task completion documents.
- Use `common-security` for security, privacy, production safety, and sensitive data risks.
- Use `backend-tools` for API, Spring, JPA, Redis, transaction, and backend implementation work.
- Use `frontend-tools` for UI, component, state management, accessibility, and browser-side work.
- Use `mobile-tools` for Android, iOS, WebView, app lifecycle, deep links, permissions, and release checks.
- Use `dba-tools` for schema, index, query plan, migration, rollback, and DB performance work.
- Use `data-tools` for ETL, metrics, data quality, lineage, and analytics workflow.
- Use `ai-tools` for prompts, RAG, evaluations, tool use, model behavior, and agent workflows.

## Rules

- Do not perform deep technical review in this skill.
- Route domain-specific work to the appropriate specialized plugin.
- If multiple plugins are needed, list them in recommended execution order.
