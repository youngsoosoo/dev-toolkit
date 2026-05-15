# common-security

`common-security`는 모든 직군이 공통으로 적용해야 하는 보안 및 운영 안전 기준을 정의하는 Claude Code 플러그인입니다.

이 플러그인은 특정 기술 스택의 구현 방식보다, 작업 전후에 반드시 확인해야 하는 민감정보, 운영 환경, 의존성, 권한, 위험 명령 실행 기준을 다룹니다.

## 목적

`common-security`의 목적은 다음과 같습니다.

- API Key, Token, Password 등 secret 노출을 방지한다.
- 개인정보와 민감정보가 로그, 문서, 테스트 데이터에 포함되지 않도록 점검한다.
- 운영 환경 명령, DB 변경, 부하 테스트, 배포 등 위험 작업을 안전하게 통제한다.
- 외부 의존성, 라이브러리, 권한 변경의 리스크를 사전에 확인한다.
- 보안 또는 운영 리스크가 남아 있는 작업을 완료 처리하지 않도록 한다.

## 구성

| 디렉터리 | 역할 |
|---|---|
| `skills/` | 보안/운영 안전 점검 절차를 정의합니다. |
| `agents/` | 보안 관점의 공통 리뷰 역할을 정의합니다. |
| `hooks/` | 위험 작업 전 확인해야 할 공통 제한 규칙을 정의합니다. |

상세 구성은 각 디렉터리의 README를 참고합니다.

- `skills/README.md`
- `agents/README.md`
- `hooks/README.md`

## 다른 플러그인과의 경계

| 항목 | 담당 플러그인 |
|---|---|
| 요구사항 정리 | `common-core` |
| 보안/개인정보/운영 안전 | `common-security` |
| Git/브랜치/PR/테스트 흐름 | `common-dev-workflow` |
| 작업 완료 문서/릴리즈 노트 | `common-documentation` |
| 백엔드 구현 세부사항 | `backend-tools` |
| 프런트엔드 구현 세부사항 | `frontend-tools` |
| DB 설계/마이그레이션 세부사항 | `dba-tools` |
| 인프라/배포 파이프라인 세부사항 | `devops-tools` |

## 권장 사용 흐름

보안 또는 운영 영향이 있는 작업은 아래 순서로 점검합니다.

```text
secret-detection-check
→ privacy-data-check
→ production-safety-check
→ dependency-risk-check
→ security-reviewer
```

## 운영 원칙

- 운영 환경에 영향을 줄 수 있는 작업은 사용자 승인 없이 실행하지 않습니다.
- Secret, Token, Password, 인증정보는 응답이나 로그에 출력하지 않습니다.
- 개인정보 또는 민감정보가 포함된 예시는 마스킹합니다.
- 운영 DB, 운영 Redis, 운영 서버를 대상으로 한 직접 변경은 별도 승인과 롤백 계획이 필요합니다.
- 보안 또는 운영 리스크가 확인되지 않은 상태에서 완료 처리하지 않습니다.
