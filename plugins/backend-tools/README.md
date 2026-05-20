# backend-tools

`backend-tools`는 백엔드 개발자가 공통으로 사용할 수 있는 Claude Code 플러그인입니다.

이 플러그인은 백엔드 작업에서 반복적으로 발생하는 API 설계, Spring Boot 코드 리뷰, 트랜잭션 경계, JPA 쿼리, Redis 캐시, 테스트 작성 및 검증 절차를 표준화합니다.

## 목적

`backend-tools`의 목적은 다음과 같습니다.

- 백엔드 코드 변경 전후의 설계와 영향 범위를 점검한다.
- API 계약, 트랜잭션, 데이터 정합성, 캐시 정합성 리스크를 줄인다.
- JPA/쿼리/Redis 사용 시 운영 성능과 장애 가능성을 검토한다.
- 단위 테스트와 통합 테스트 작성 기준을 제공한다.
- 구현 완료 후 백엔드 관점의 최종 리뷰 기준을 제공한다.

## 구성

| 디렉터리 | 역할 |
|---|---|
| `skills/` | 백엔드 개발 작업 절차와 리뷰 기준을 정의합니다. |
| `agents/` | 백엔드 아키텍처, 코드 품질, 테스트 품질 리뷰 역할을 정의합니다. |
| `hooks/` | 백엔드 변경 전후에 확인할 위험 기준을 정의합니다. |

상세 구성은 각 디렉터리의 README를 참고합니다.

- `skills/README.md`
- `agents/README.md`
- `hooks/README.md`

## 다른 플러그인과의 경계

| 항목 | 담당 플러그인 |
|---|---|
| 요구사항 명확화/작업 분류 | `common-core` |
| Git/테스트/PR/배포 흐름 | `common-dev-workflow` |
| 보안/운영 안전 | `common-security` |
| 작업 완료 문서/보고서 | `common-documentation` |
| 백엔드 API/Spring/JPA/Redis/Transaction | `backend-tools` |
| DB 마이그레이션/실행계획/인덱스 상세 | `dba-tools` |
| 프런트엔드 연동/화면/상태관리 | `frontend-tools` |

## 권장 사용 흐름

```text
common-core로 요구사항 정리
→ common-dev-workflow로 Git/계획/테스트 흐름 정리
→ backend-tools로 API/구현/데이터/캐시/테스트 검토
→ common-security로 운영/보안 리스크 점검
→ common-documentation으로 작업 결과 정리
```

## 운영 원칙

- 데이터 정합성과 운영 안정성을 스타일보다 우선합니다.
- 트랜잭션 경계, 예외 처리, 캐시 무효화, 테스트 가능성을 명확히 봅니다.
- DB 스키마 변경, 인덱스 설계, 실행계획 상세 분석은 `dba-tools`와 함께 검토합니다.
- 운영 영향이 있는 변경은 `common-security`의 production safety 기준을 함께 적용합니다.
