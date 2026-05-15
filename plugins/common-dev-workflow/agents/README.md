# common-dev-workflow agents

`common-dev-workflow/agents`는 개발 작업 흐름을 공통 관점에서 검토하는 역할을 정의합니다.

Agent는 개별 Skill 결과를 바탕으로 개발 계획, 테스트, PR, 배포 준비 상태를 점검합니다.

## 구성

| Agent | 파일 | 역할 |
|---|---|---|
| `workflow-reviewer` | `workflow-reviewer.md` | 개발 workflow 누락 여부 검토 |
| `release-readiness-reviewer` | `release-readiness-reviewer.md` | 배포 준비 상태 검토 |

## workflow-reviewer

개발 작업이 요구사항, 계획, 테스트, 검증 흐름을 제대로 거쳤는지 검토합니다.

검토 기준:

- Git 작업 준비 여부
- 개발 계획 존재 여부
- 테스트 전략 존재 여부
- 테스트 실행 결과 명확성
- PR 요약 품질
- 남은 미검증 항목

## release-readiness-reviewer

배포 또는 릴리즈 전 준비 상태를 검토합니다.

검토 기준:

- 배포 대상과 영향 범위
- 선행 작업 여부
- DB/캐시/설정 변경 여부
- 배포 후 검증 계획
- 롤백 기준
- 보안/운영 안전 검토 필요 여부

## 작성 원칙

- 테스트나 배포 검증이 없으면 완료로 판단하지 않습니다.
- 운영 영향이 있으면 `common-security` 검토를 요구합니다.
- 기술 스택별 구현 품질은 직군별 플러그인으로 넘깁니다.
