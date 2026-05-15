# common-core

`common-core`는 모든 직군이 공통으로 사용할 수 있는 Claude Code 기본 플러그인입니다.

특정 기술 스택이나 직군에 종속된 세부 규칙이 아니라, Claude를 사용할 때 공통으로 필요한 요구사항 정리, 작업 분류, 영향/리스크 확인, 최종 응답 품질 기준을 제공합니다.

## 목적

`common-core`의 목적은 다음과 같습니다.

- 요청을 바로 구현하지 않고 먼저 명확하게 정리한다.
- 확인된 내용과 불확실한 내용을 분리한다.
- 작업 유형과 관련 직군을 식별한다.
- 변경 영향과 리스크를 초기에 드러낸다.
- 최종 응답에서 완료/미완료/검증 상태를 명확히 구분한다.

## 구성

| 디렉터리 | 역할 |
|---|---|
| `skills/` | 공통 작업 절차를 정의합니다. |
| `agents/` | 공통 검토 역할을 정의합니다. |
| `hooks/` | 공통 자동 검증/제한 규칙을 정의합니다. 초기에는 사용하지 않습니다. |

상세 구성은 각 디렉터리의 README를 참고합니다.

- `skills/README.md`
- `agents/README.md`

## 다른 플러그인과의 경계

| 항목 | 담당 플러그인 |
|---|---|
| 요구사항 정리 | `common-core` |
| 작업 유형 분류 | `common-core` |
| 공통 영향/리스크 스캔 | `common-core` |
| 최종 응답 기준 | `common-core` |
| 보안/개인정보/운영 안전 | `common-security` |
| Git/브랜치/PR/테스트 흐름 | `common-dev-workflow` |
| 작업 완료 문서/주간보고/릴리즈 노트 | `common-documentation` |
| Spring/JPA/Redis/API | `backend-tools` |
| UI/상태관리/접근성 | `frontend-tools` |
| DB 마이그레이션/인덱스/실행계획 | `dba-tools` |

## 권장 사용 흐름

일반적인 작업은 아래 순서로 진행합니다.

```text
requirement-clarification
→ task-intake
→ impact-risk-scan
→ 직군별 플러그인
→ final-response-standard
```

예시:

```text
요구사항 정리
→ 백엔드 작업으로 분류
→ DB/Redis 영향 확인
→ backend-tools로 구현/리뷰
→ final-response-standard로 결과 정리
```

## 운영 원칙

- `common-core`에는 특정 기술 스택에 종속된 세부 규칙을 넣지 않습니다.
- 보안, 운영 환경, 개인정보 관련 강제 규칙은 `common-security`에 둡니다.
- Git, 브랜치, PR, 테스트 실행 흐름은 `common-dev-workflow`에 둡니다.
- 문서화 템플릿은 `common-documentation`에 둡니다.
- Hook은 초기에는 사용하지 않고, 필요성이 명확해진 뒤 별도 플러그인에서 관리합니다.
