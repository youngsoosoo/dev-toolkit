# dev-toolkit
Claude Code 기반의 공통 개발 워크플로우, 직군별 Skill, 코드 리뷰, 테스트, 문서화, 배포 검증을 관리하는 개발자 도구 모음

# dev-toolkit 플러그인 구조 요약

> 현재는 기본 폴더 구조만 생성된 상태이며, 실제 `SKILL.md`, Agent `.md`, Hook `.md` 파일은 아직 생성하지 않았습니다.  
> 아래 MD 개수는 초기 설계 기준의 권장 개수입니다.

## Marketplace 등록 명령어

플러그인을 설치하기 전에 먼저 marketplace를 등록합니다.

```text
/plugin marketplace add youngsoosoo/dev-toolkit
```

## 플러그인 구성표

| 플러그인 | 대상 | Skills MD | Agents MD | Hooks MD | 설치 명령어 |
|----|---|---:|---:|---:|---|
| `common-core` | 전 직군 공통 | 4 | 1 | 0 | `/plugin install common-core@dev-toolkit` |
| `common-dev-workflow` | 개발 직군 공통 | 6 | 2 | 1 | `/plugin install common-dev-workflow@dev-toolkit` |
| `common-documentation` | 전 직군 문서화 공통 | 5 | 1 | 0 | `/plugin install common-documentation@dev-toolkit` |
| `common-security` | 전 직군 보안/운영 안전 | 4 | 1 | 1 | `/plugin install common-security@dev-toolkit` |
| `backend-tools` | 백엔드 개발자 | 7 | 3 | 1 | `/plugin install backend-tools@dev-toolkit` |
| `frontend-tools` | 프런트엔드 개발자 | 6 | 2 | 1 | `/plugin install frontend-tools@dev-toolkit` |
| `mobile-tools` | 모바일 개발자 | 6 | 2 | 1 | `/plugin install mobile-tools@dev-toolkit` |
| `dba-tools` | DBA / DB 검토 담당자 | 6 | 2 | 1 | `/plugin install dba-tools@dev-toolkit` |
| `data-tools` | 데이터 엔지니어 / 분석가 | 6 | 2 | 1 | `/plugin install data-tools@dev-toolkit` |
| `ai-tools` | AI / Agent / RAG 개발자 | 6 | 2 | 1 | `/plugin install ai-tools@dev-toolkit` |
