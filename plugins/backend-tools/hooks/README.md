# backend-tools hooks

`backend-tools/hooks`는 백엔드 변경 전후에 적용할 수 있는 공통 위험 확인 기준을 관리하는 위치입니다.

현재는 실제 실행 Hook이 아니라, 향후 Hook으로 전환할 수 있는 기준 문서로 관리합니다.

## 구성

| Hook | 파일 | 역할 |
|---|---|---|
| `backend-change-risk-guard` | `backend-change-risk-guard.md` | 백엔드 변경 전 위험 확인 기준 |

## Hook 적용 후보

향후 실제 Hook으로 전환할 수 있는 대상은 다음과 같습니다.

- Controller/Service/Repository 변경 시 테스트 계획 확인
- Transactional 코드 변경 시 트랜잭션 리뷰 요구
- Redis 관련 코드 변경 시 캐시 정합성 리뷰 요구
- JPA/Query 변경 시 쿼리 리뷰 요구
- API DTO 변경 시 API 계약 리뷰 요구

## 작성 원칙

- 초기에는 자동 차단보다 명시적 경고와 리뷰 기준 문서화에 집중합니다.
- 실제 Hook으로 전환할 때는 오탐 가능성과 개발자 경험을 함께 고려합니다.
- 운영 영향이 있는 백엔드 변경은 `common-security` 기준을 함께 적용합니다.
