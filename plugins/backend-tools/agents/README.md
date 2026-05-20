# backend-tools agents

`backend-tools/agents`는 백엔드 작업 결과를 전문 관점에서 검토하는 역할을 정의합니다.

Agent는 Skill이 만든 계획, 구현, 테스트 결과를 바탕으로 백엔드 아키텍처, 코드 품질, 테스트 품질을 검토합니다.

## 구성

| Agent | 파일 | 역할 |
|---|---|---|
| `backend-architect` | `backend-architect.md` | 백엔드 구조와 책임 분리 리뷰 |
| `backend-code-reviewer` | `backend-code-reviewer.md` | 백엔드 코드 품질과 운영 안정성 리뷰 |
| `backend-test-reviewer` | `backend-test-reviewer.md` | 백엔드 테스트 커버리지와 검증 품질 리뷰 |

## 작성 원칙

- 데이터 정합성, 트랜잭션, 장애 가능성을 우선 검토합니다.
- 단순 스타일 리뷰보다 구조, 책임, 실패 시나리오를 우선합니다.
- DB 실행계획, 인덱스, 락 상세는 `dba-tools`로 넘깁니다.
- 운영/보안 위험은 `common-security` 기준과 함께 검토합니다.
