# common-dev-workflow

`common-dev-workflow`는 개발 직군이 공통으로 사용하는 작업 흐름을 표준화하는 Claude Code 플러그인입니다.

이 플러그인은 특정 기술 스택의 구현 규칙이 아니라, 개발 작업을 시작하고 계획하고 검증하고 공유하는 공통 절차를 다룹니다.

## 목적

`common-dev-workflow`의 목적은 다음과 같습니다.

- 작업 시작 전 Git 상태와 기준 브랜치를 정리한다.
- 요구사항을 구현 가능한 작업 단위로 전환한다.
- 구현 전 계획, 영향 범위, 테스트 전략을 수립한다.
- 테스트 실행 결과와 미검증 항목을 명확히 남긴다.
- PR, 배포, 롤백 체크리스트를 일관되게 작성한다.

## 구성

| 디렉터리 | 역할 |
|---|---|
| `skills/` | 개발 공통 작업 절차를 정의합니다. |
| `agents/` | 개발 workflow 검토 역할을 정의합니다. |
| `hooks/` | 개발 작업 전후의 안전 확인 기준을 정의합니다. |

상세 구성은 각 디렉터리의 README를 참고합니다.

- `skills/README.md`
- `agents/README.md`
- `hooks/README.md`

## 다른 플러그인과의 경계

| 항목 | 담당 플러그인 |
|---|---|
| 요구사항 명확화/작업 분류 | `common-core` |
| Git/작업 계획/테스트/PR/배포 흐름 | `common-dev-workflow` |
| 보안/개인정보/운영 안전 | `common-security` |
| 문서 템플릿/보고서/릴리즈 노트 | `common-documentation` |
| 백엔드 구현 세부사항 | `backend-tools` |
| 프런트엔드 구현 세부사항 | `frontend-tools` |
| DB 설계/마이그레이션 세부사항 | `dba-tools` |

## 권장 사용 흐름

```text
git-work-preparation
→ development-planning
→ test-strategy
→ 직군별 구현/리뷰 플러그인
→ test-execution-summary
→ pull-request-summary
→ deployment-checklist
```

## 운영 원칙

- 기준 브랜치에서 직접 작업하지 않습니다.
- 로컬 변경사항이 있는 상태에서 임의로 checkout, pull, reset을 수행하지 않습니다.
- 테스트를 실행하지 않았다면 테스트 통과로 표현하지 않습니다.
- 배포 영향이 있는 작업은 체크리스트와 롤백 기준을 남깁니다.
- 보안/운영 위험은 `common-security`와 함께 검토합니다.
