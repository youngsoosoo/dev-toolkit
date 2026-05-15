#!/usr/bin/env bash
set -euo pipefail

MARKETPLACE_NAME="${MARKETPLACE_NAME:-dev-toolkit}"

get_target() {
  case "$1" in
    common-core)
      echo "전 직군 공통"
      ;;
    common-dev-workflow)
      echo "개발 직군 공통"
      ;;
    common-documentation)
      echo "전 직군 문서화 공통"
      ;;
    common-security)
      echo "전 직군 보안/운영 안전"
      ;;
    backend-tools)
      echo "백엔드 개발자"
      ;;
    frontend-tools)
      echo "프런트엔드 개발자"
      ;;
    mobile-tools)
      echo "모바일 개발자"
      ;;
    dba-tools)
      echo "DBA / DB 검토 담당자"
      ;;
    data-tools)
      echo "데이터 엔지니어 / 분석가"
      ;;
    devops-tools)
      echo "DevOps / 인프라 담당자"
      ;;
    ai-tools)
      echo "AI / Agent / RAG 개발자"
      ;;
    *)
      echo "확인 필요"
      ;;
  esac
}

count_markdown_files() {
  local target_dir="$1"

  if [ ! -d "$target_dir" ]; then
    echo 0
    return
  fi

  find "$target_dir" -type f -name "*.md" ! -name ".gitkeep" | wc -l | tr -d ' '
}

echo "# dev-toolkit 플러그인 구조 요약"
echo
echo "> 이 문서는 scripts/generate-plugin-summary.sh 실행 결과를 기반으로 갱신할 수 있습니다."
echo
echo "## 플러그인 구성표"
echo
echo "| 플러그인 | 대상 | Skills MD | Agents MD | Hooks MD | 설치 명령어 |"
echo "|---|---|---:|---:|---:|---|"

if [ ! -d "plugins" ]; then
  echo "plugins 디렉터리를 찾을 수 없습니다." >&2
  exit 1
fi

for plugin_dir in plugins/*; do
  [ -d "$plugin_dir" ] || continue

  plugin_name="$(basename "$plugin_dir")"
  target="$(get_target "$plugin_name")"

  skills_count="$(count_markdown_files "$plugin_dir/skills")"
  agents_count="$(count_markdown_files "$plugin_dir/agents")"
  hooks_count="$(count_markdown_files "$plugin_dir/hooks")"
  install_command="\`/plugin install ${plugin_name}@${MARKETPLACE_NAME}\`"

  echo "| \`${plugin_name}\` | ${target} | ${skills_count} | ${agents_count} | ${hooks_count} | ${install_command} |"
done

echo
echo "## 사용 방법"
echo
echo '```bash'
echo "bash scripts/generate-plugin-summary.sh"
echo '```'
echo
echo "문서 파일로 저장하려면 아래 명령어를 사용합니다."
echo
echo '```bash'
echo "bash scripts/generate-plugin-summary.sh > docs/plugin-summary.md"
echo '```'
echo
echo "Marketplace 이름을 변경해서 출력하려면 아래처럼 실행합니다."
echo
echo '```bash'
echo "MARKETPLACE_NAME=company-toolkit bash scripts/generate-plugin-summary.sh"
echo '```'
