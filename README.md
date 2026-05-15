# dev-toolkit

Claude Code 기반의 공통 개발 워크플로우, 직군별 Skill, 코드 리뷰, 테스트, 문서화, 배포 검증을 관리하는 개발자 도구 모음입니다.

## Marketplace 등록 명령어

플러그인을 설치하기 전에 먼저 marketplace를 등록합니다.

```text
/plugin marketplace add youngsoosoo/dev-toolkit
```

설치 후 플러그인을 다시 로드합니다.

```text
/reload-plugins
```

## 플러그인 구조 요약

> 현재는 기본 폴더 구조만 생성된 상태이며, 실제 `SKILL.md`, Agent `.md`, Hook `.md` 파일은 아직 생성하지 않았습니다.  
> 아래 MD 개수는 현재 레포지토리의 `.md` 파일 기준으로 집계해야 합니다.

| 플러그인 | 대상 | Skills MD | Agents MD | Hooks MD | 설치 명령어 |
|---|---|---:|---:|---:|---|
| `common-core` | 전 직군 공통 | 0 | 0 | 0 | `/plugin install common-core@dev-toolkit` |
| `common-dev-workflow` | 개발 직군 공통 | 0 | 0 | 0 | `/plugin install common-dev-workflow@dev-toolkit` |
| `common-documentation` | 전 직군 문서화 공통 | 0 | 0 | 0 | `/plugin install common-documentation@dev-toolkit` |
| `common-security` | 전 직군 보안/운영 안전 | 0 | 0 | 0 | `/plugin install common-security@dev-toolkit` |
| `backend-tools` | 백엔드 개발자 | 0 | 0 | 0 | `/plugin install backend-tools@dev-toolkit` |
| `frontend-tools` | 프런트엔드 개발자 | 0 | 0 | 0 | `/plugin install frontend-tools@dev-toolkit` |
| `mobile-tools` | 모바일 개발자 | 0 | 0 | 0 | `/plugin install mobile-tools@dev-toolkit` |
| `dba-tools` | DBA / DB 검토 담당자 | 0 | 0 | 0 | `/plugin install dba-tools@dev-toolkit` |
| `data-tools` | 데이터 엔지니어 / 분석가 | 0 | 0 | 0 | `/plugin install data-tools@dev-toolkit` |
| `ai-tools` | AI / Agent / RAG 개발자 | 0 | 0 | 0 | `/plugin install ai-tools@dev-toolkit` |

## 플러그인별 구성 기준

| 디렉터리 | 역할 | 예시 |
|---|---|---|
| `skills/` | 반복 가능한 작업 절차 정의 | 코드 리뷰, 테스트 작성, 문서화, 설계 검토 |
| `agents/` | 역할 기반 전문가 정의 | 백엔드 아키텍트, DBA 리뷰어, 보안 리뷰어 |
| `hooks/` | 특정 시점의 자동 검증/제한 규칙 | 위험 명령 차단, 테스트 실행 확인, 보안 점검 |

## 플러그인 요약 자동 생성

`plugins/*/skills`, `plugins/*/agents`, `plugins/*/hooks` 하위의 `.md` 파일 개수는 아래 스크립트로 자동 집계할 수 있습니다.

```bash
bash scripts/generate-plugin-summary.sh
```

문서 파일로 저장하려면 아래 명령어를 사용합니다.

```bash
bash scripts/generate-plugin-summary.sh > docs/plugin-summary.md
```

Marketplace 이름을 바꿔 출력하려면 아래처럼 실행합니다.

```bash
MARKETPLACE_NAME=company-toolkit bash scripts/generate-plugin-summary.sh
```

## 우선 작성 순서

초기에는 모든 플러그인을 한 번에 완성하기보다 아래 순서로 작성하는 것을 권장합니다.

| 우선순위 | 플러그인 | 이유 |
|---:|---|---|
| 1 | `common-core` | 전 직군 공통 사용 기준 정의 |
| 2 | `common-security` | 보안/운영 안전 규칙 선반영 |
| 3 | `common-dev-workflow` | 개발 작업 공통 흐름 표준화 |
| 4 | `common-documentation` | 작업 완료/보고/PR 문서화 표준화 |
| 5 | `backend-tools` | 실제 사용 빈도가 높은 백엔드 업무부터 적용 |
| 6 | `frontend-tools` | 화면/상태/API 계약 검토 확장 |
| 7 | `dba-tools` | DB 변경/성능/마이그레이션 검토 강화 |
| 8 | `mobile-tools` | 앱 생명주기/WebView/배포 검증 확장 |
| 9 | `data-tools` | 데이터 품질/배치/지표 검토 확장 |
| 10 | `ai-tools` | RAG/Agent/Eval 검증 체계 확장 |
