# common-documentation skills

`common-documentation/skills`는 모든 직군이 공통으로 사용할 수 있는 문서화 절차와 템플릿을 정의합니다.

여기에는 특정 기술 스택의 상세 구현 설명이 아니라, 작업 결과를 일관되게 기록하고 공유하기 위한 공통 문서화 기준을 둡니다.

## 구성

| Skill | 파일 | 역할 |
|---|---|---|
| `task-completion-doc` | `task-completion-doc/SKILL.md` | 작업 완료 문서 작성 |
| `weekly-report` | `weekly-report/SKILL.md` | 주간 업무 보고 작성 |
| `release-note` | `release-note/SKILL.md` | 릴리즈 노트 작성 |
| `incident-report` | `incident-report/SKILL.md` | 장애/이슈 보고서 작성 |
| `decision-record` | `decision-record/SKILL.md` | 의사결정 기록 작성 |

## 작성 원칙

- 문서 목적에 맞는 정보만 포함합니다.
- 완료/미완료/미검증 항목을 구분합니다.
- 추측은 추측으로 표시합니다.
- 민감정보와 개인정보는 마스킹합니다.
- 테스트나 검증을 수행하지 않았다면 통과로 작성하지 않습니다.

## 권장 사용 흐름

```text
문서 유형 선택
→ 작업 내용 수집
→ 문서 초안 작성
→ 검증 상태 명시
→ documentation-reviewer로 품질 검토
```
