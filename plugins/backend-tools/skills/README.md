# backend-tools skills

`backend-tools/skills`는 백엔드 개발자가 반복적으로 수행하는 설계, 구현, 리뷰, 테스트 작업의 기준을 정의합니다.

## 구성

| Skill | 파일 | 역할 |
|---|---|---|
| `spring-backend-review` | `spring-backend-review/SKILL.md` | Spring Boot 백엔드 코드 리뷰 |
| `api-design-review` | `api-design-review/SKILL.md` | API 계약과 응답 구조 검토 |
| `transaction-boundary-review` | `transaction-boundary-review/SKILL.md` | 트랜잭션 경계와 데이터 정합성 검토 |
| `jpa-query-review` | `jpa-query-review/SKILL.md` | JPA/쿼리 성능과 N+1 리스크 검토 |
| `redis-cache-design` | `redis-cache-design/SKILL.md` | Redis 캐시 구조와 정합성 검토 |
| `unit-test-generation` | `unit-test-generation/SKILL.md` | 백엔드 단위 테스트 작성 기준 |
| `integration-test-generation` | `integration-test-generation/SKILL.md` | 백엔드 통합 테스트 작성 기준 |

## 권장 사용 흐름

```text
api-design-review
→ spring-backend-review
→ transaction-boundary-review
→ jpa-query-review 또는 redis-cache-design
→ unit-test-generation
→ integration-test-generation
```

## 작성 원칙

- 운영 장애 가능성, 데이터 정합성, 테스트 가능성을 우선합니다.
- 단순 스타일 리뷰보다 구조, 경계, 실패 시나리오를 먼저 봅니다.
- DB 실행계획/인덱스 상세 분석은 `dba-tools`와 함께 검토합니다.
- 운영 환경 영향이 있으면 `common-security` 검토를 요구합니다.
