# common-security skills

`common-security/skills`는 모든 직군이 공통으로 사용할 수 있는 보안 및 운영 안전 점검 절차를 정의합니다.

여기에는 특정 기술 스택의 상세 보안 구현이 아니라, 작업 전후에 반드시 확인해야 하는 공통 보안/운영 안전 기준을 둡니다.

## 구성

| Skill | 파일 | 역할 |
|---|---|---|
| `secret-detection-check` | `secret-detection-check/SKILL.md` | Secret, Token, Password 노출 점검 |
| `privacy-data-check` | `privacy-data-check/SKILL.md` | 개인정보/민감정보 포함 여부 점검 |
| `production-safety-check` | `production-safety-check/SKILL.md` | 운영 환경 영향 및 위험 작업 점검 |
| `dependency-risk-check` | `dependency-risk-check/SKILL.md` | 외부 의존성, 라이브러리, 권한 변경 리스크 점검 |

## secret-detection-check

코드, 로그, 문서, 테스트 데이터에 secret이 포함되어 있는지 점검합니다.

주요 역할:

- API Key, Token, Password 노출 확인
- 인증정보 하드코딩 여부 확인
- `.env`, 설정 파일, 로그 출력 위험 확인
- 마스킹 필요 여부 판단

## privacy-data-check

개인정보와 민감정보가 불필요하게 포함되어 있는지 점검합니다.

주요 역할:

- 이름, 연락처, 이메일, 주민번호, 환자정보 등 개인정보 확인
- 로그/문서/테스트 데이터 내 민감정보 포함 여부 확인
- 마스킹 또는 샘플 데이터 대체 필요 여부 판단

## production-safety-check

운영 환경에 영향을 줄 수 있는 위험 작업을 점검합니다.

주요 역할:

- 운영 DB/Redis/서버 직접 변경 여부 확인
- 운영 대상 부하 테스트 여부 확인
- 배포, 롤백, 마이그레이션 리스크 확인
- 사용자 승인 필요 여부 판단

## dependency-risk-check

외부 의존성, 라이브러리, 권한 변경에 따른 리스크를 점검합니다.

주요 역할:

- 신규 패키지 또는 라이브러리 추가 확인
- 권한 범위 변경 확인
- 외부 API 또는 SaaS 연동 리스크 확인
- 라이선스, 보안 취약점, 유지보수성 확인

## 작성 원칙

- 보안 점검 결과는 `확인됨`, `미확인`, `조치 필요`로 구분합니다.
- 운영 환경 영향이 있는 작업은 명시적으로 승인 필요 여부를 표시합니다.
- 민감정보는 원문을 그대로 출력하지 않고 마스킹합니다.
- 기술 스택별 보안 구현 세부사항은 해당 직군 플러그인으로 넘깁니다.
