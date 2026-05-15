# common-core agents

`common-core/agents`는 모든 직군에서 공통으로 사용할 수 있는 기본 검토 역할을 정의합니다.

Agent는 특정 작업 절차를 정의하는 Skill과 달리, 역할 기반으로 작업 결과를 검토하거나 판단하는 데 사용합니다.

## 구성

| Agent | 파일 | 역할 |
|---|---|---|
| `general-task-reviewer` | `general-task-reviewer.md` | 공통 작업 리뷰어 |

## general-task-reviewer

직군별 전문 리뷰 전에 공통 관점에서 작업을 검토하는 Agent입니다.

검토 기준:

- 요구사항이 충분한지
- 범위가 명확한지
- 추측과 사실이 분리되어 있는지
- 리스크가 드러나 있는지
- 검증 상태가 명확한지
- 특정 직군 플러그인으로 넘겨야 하는지

## 사용 경계

`general-task-reviewer`는 도메인 전문 리뷰어가 아닙니다.

따라서 아래와 같은 전문 판단은 각 직군 플러그인으로 넘깁니다.

| 전문 영역 | 담당 플러그인 |
|---|---|
| Backend/API/JPA/Redis | `backend-tools` |
| Frontend/UI/Accessibility | `frontend-tools` |
| Mobile/App lifecycle/WebView | `mobile-tools` |
| DB/Migration/Index/Query plan | `dba-tools` |
| Data/ETL/Metric/Data quality | `data-tools` |
| AI/RAG/Eval/Prompt | `ai-tools` |

## 작성 원칙

- 공통 Agent는 작업 품질, 요구사항, 범위, 검증 상태를 중심으로 봅니다.
- 특정 기술 스택의 세부 리뷰는 수행하지 않습니다.
- 작업 완료 여부를 과장하지 않고, 검증되지 않은 항목은 명확히 표시합니다.
