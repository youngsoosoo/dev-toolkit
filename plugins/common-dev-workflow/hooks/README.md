# common-dev-workflow hooks

`common-dev-workflow/hooks`는 개발 작업 전후에 적용할 수 있는 공통 workflow guard 기준을 정의합니다.

현재는 실제 실행 Hook 스크립트가 아니라, 향후 Hook으로 전환할 수 있는 기준 문서로 관리합니다.

## 구성

| Hook | 파일 | 역할 |
|---|---|---|
| `workflow-preflight-guard` | `workflow-preflight-guard.md` | 개발 작업 시작 전 Git/상태 확인 기준 |

## workflow-preflight-guard

개발 작업 시작 전에 확인해야 하는 기준입니다.

## Hook 적용 후보

향후 실제 Hook으로 전환할 수 있는 대상은 다음과 같습니다.

- 기준 브랜치에서 직접 작업하려는 경우 경고
- 로컬 변경사항이 있는 상태에서 pull/checkout/reset 시도 감지
- 테스트 없이 완료 처리하려는 경우 경고
- 배포 체크리스트 없이 release summary 작성 시도 감지

## 작성 원칙

- 초기에는 자동 차단보다 명시적 경고와 확인 기준 문서화에 집중합니다.
- 실제 Hook으로 전환할 때는 개발자 경험과 오탐 가능성을 함께 고려합니다.
- 보안/운영 위험 작업은 `common-security` 기준을 우선 적용합니다.
