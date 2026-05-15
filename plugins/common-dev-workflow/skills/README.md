# common-dev-workflow skills

`common-dev-workflow/skills`는 개발 직군이 공통으로 사용할 수 있는 개발 작업 흐름을 정의합니다.

여기에는 특정 기술 스택의 구현 규칙이 아니라, 작업 준비, 구현 계획, 테스트 전략, 테스트 결과, PR, 배포 체크리스트 같은 공통 절차를 둡니다.

## 구성

| Skill | 파일 | 역할 |
|---|---|---|
| `git-work-preparation` | `git-work-preparation/SKILL.md` | Git 상태 확인 및 작업 브랜치 준비 |
| `development-planning` | `development-planning/SKILL.md` | 구현 전 개발 계획 수립 |
| `test-strategy` | `test-strategy/SKILL.md` | 테스트 범위와 전략 수립 |
| `test-execution-summary` | `test-execution-summary/SKILL.md` | 테스트 실행 결과 정리 |
| `pull-request-summary` | `pull-request-summary/SKILL.md` | PR 설명 및 리뷰 포인트 정리 |
| `deployment-checklist` | `deployment-checklist/SKILL.md` | 배포 전 확인사항과 롤백 기준 정리 |

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

## 작성 원칙

- 특정 기술 스택의 상세 구현 규칙은 직군별 플러그인으로 분리합니다.
- 작업 흐름, 체크리스트, 산출물 정리에 집중합니다.
- 테스트를 실행하지 않았다면 미검증으로 표시합니다.
- 배포 영향이 있는 작업은 롤백 기준을 포함합니다.
