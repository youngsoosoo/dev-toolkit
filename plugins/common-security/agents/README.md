# common-security agents

`common-security/agents`는 모든 직군에서 공통으로 사용할 수 있는 보안/운영 안전 리뷰 역할을 정의합니다.

Agent는 Skill이 수행한 점검 결과를 기반으로 작업이 안전하게 마무리될 수 있는지 검토합니다.

## 구성

| Agent | 파일 | 역할 |
|---|---|---|
| `security-risk-reviewer` | `security-risk-reviewer.md` | 공통 보안/운영 리스크 리뷰어 |

## security-risk-reviewer

보안과 운영 안전 관점에서 작업 결과를 검토하는 Agent입니다.

검토 기준:

- Secret, Token, Password 노출 여부
- 개인정보/민감정보 포함 여부
- 운영 환경 영향 가능성
- 위험 명령 실행 여부
- 외부 의존성 또는 권한 변경 리스크
- 승인, 롤백, 검증 상태 명확성

## 사용 경계

`security-risk-reviewer`는 기술 스택별 보안 구현을 깊게 리뷰하는 Agent가 아닙니다.

전문 영역은 아래 플러그인으로 넘깁니다.

| 전문 영역 | 담당 플러그인 |
|---|---|
| Backend 보안 구현 | `backend-tools` |
| Frontend 보안 구현 | `frontend-tools` |
| DB 접근/권한/마이그레이션 | `dba-tools` |
| 인프라/배포/네트워크 보안 | `devops-tools` |
| AI Agent tool safety | `ai-tools` |

## 작성 원칙

- 보안 위험은 축소해서 표현하지 않습니다.
- 검증되지 않은 항목은 `미확인`으로 표시합니다.
- 운영 영향 가능성이 있으면 승인 필요 여부를 명시합니다.
- Secret 또는 개인정보 원문은 응답에 반복하지 않습니다.
