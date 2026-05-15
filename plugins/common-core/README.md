# common-core

`common-core`는 모든 직군이 공통으로 사용할 수 있는 Claude Code 기본 플러그인입니다.

특정 기술 스택이나 직군에 종속된 규칙이 아니라, Claude를 사용할 때 공통으로 필요한 요구사항 정리, 작업 분류, 영향/리스크 확인, 최종 응답 품질 기준을 제공합니다.

## 목적

`common-core`의 목적은 다음과 같습니다.

- 요청을 바로 구현하지 않고 먼저 명확하게 정리한다.
- 확인된 내용과 불확실한 내용을 분리한다.
- 작업 유형과 관련 직군을 식별한다.
- 변경 영향과 리스크를 초기에 드러낸다.
- 최종 응답에서 완료/미완료/검증 상태를 명확히 구분한다.

## 구성

| 구분 | 파일 | 역할 |
|---|---|---|
| Skill | `skills/requirement-clarification/SKILL.md` | 요구사항 명확화 |
| Skill | `skills/task-intake/SKILL.md` | 작업 유형 분류 및 플러그인 라우팅 |
| Skill | `skills/impact-risk-scan/SKILL.md` | 공통 영향 범위/리스크 점검 |
| Skill | `skills/final-response-standard/SKILL.md` | 최종 응답/검증 결과 표준화 |
| Agent | `agents/general-task-reviewer.md` | 공통 작업 리뷰어 |

## Skills

### requirement-clarification

요청이 모호하거나 범위가 불명확할 때 사용합니다.

주요 역할:

- 요청 요약
- 확인된 내용 정리
- 불확실한 내용 분리
- 확인 필요 사항 도출
- 인수 조건 정리
- 제외 범위 명시

### task-intake

새 작업을 시작할 때 작업 유형을 분류하고, 어떤 플러그인이나 워크플로우가 필요한지 판단합니다.

주요 역할:

- 작업 유형 분류
- 관련 직군 식별
- 필요한 플러그인 추천
- 예상 작업 단계 정리
- 예상 산출물 정의

### impact-risk-scan

작업 전 공통 영향 범위와 리스크를 점검합니다.

주요 역할:

- 사용자 영향 확인
- 데이터 영향 확인
- 운영 영향 확인
- 회귀 리스크 확인
- 추가 검토 필요 영역 식별

### final-response-standard

작업 결과를 사용자에게 전달할 때 응답 품질을 표준화합니다.

주요 역할:

- 완료한 작업 정리
- 확인한 내용 정리
- 검증 결과 명시
- 남은 이슈 정리
- 다음 작업 제안

## Agent

### general-task-reviewer

직군별 전문 리뷰 전에 공통 관점에서 작업을 검토하는 Agent입니다.

검토 기준:

- 요구사항이 충분한지
- 범위가 명확한지
- 추측과 사실이 분리되어 있는지
- 리스크가 드러나 있는지
- 검증 상태가 명확한지
- 특정 직군 플러그인으로 넘겨야 하는지

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
