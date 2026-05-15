# common-core skills

`common-core/skills`는 모든 직군이 공통으로 사용할 수 있는 기본 작업 절차를 정의합니다.

여기에는 특정 기술 스택에 종속된 구현 규칙이 아니라, 작업을 시작하고 정리하고 검증하는 데 필요한 공통 절차를 둡니다.

## 구성

| Skill | 파일 | 역할 |
|---|---|---|
| `requirement-clarification` | `requirement-clarification/SKILL.md` | 요구사항 명확화 |
| `task-intake` | `task-intake/SKILL.md` | 작업 유형 분류 및 플러그인 라우팅 |
| `impact-risk-scan` | `impact-risk-scan/SKILL.md` | 공통 영향 범위/리스크 점검 |
| `final-response-standard` | `final-response-standard/SKILL.md` | 최종 응답/검증 결과 표준화 |

## requirement-clarification

요청이 모호하거나 범위가 불명확할 때 사용합니다.

주요 역할:

- 요청 요약
- 확인된 내용 정리
- 불확실한 내용 분리
- 확인 필요 사항 도출
- 인수 조건 정리
- 제외 범위 명시

## task-intake

새 작업을 시작할 때 작업 유형을 분류하고, 어떤 플러그인이나 워크플로우가 필요한지 판단합니다.

주요 역할:

- 작업 유형 분류
- 관련 직군 식별
- 필요한 플러그인 추천
- 예상 작업 단계 정리
- 예상 산출물 정의

## impact-risk-scan

작업 전 공통 영향 범위와 리스크를 점검합니다.

주요 역할:

- 사용자 영향 확인
- 데이터 영향 확인
- 운영 영향 확인
- 회귀 리스크 확인
- 추가 검토 필요 영역 식별

## final-response-standard

작업 결과를 사용자에게 전달할 때 응답 품질을 표준화합니다.

주요 역할:

- 완료한 작업 정리
- 확인한 내용 정리
- 검증 결과 명시
- 남은 이슈 정리
- 다음 작업 제안

## 권장 사용 흐름

```text
requirement-clarification
→ task-intake
→ impact-risk-scan
→ 직군별 플러그인
→ final-response-standard
```

## 작성 원칙

- 공통 Skill에는 특정 기술 스택의 세부 구현 규칙을 넣지 않습니다.
- 특정 직군의 전문 판단은 해당 직군 플러그인으로 분리합니다.
- 공통 Skill은 작업 전후의 품질과 흐름을 안정화하는 데 집중합니다.
