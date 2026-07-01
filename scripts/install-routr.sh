#!/usr/bin/env bash
# ROUTR bundle installer — pick groups, then install selected playbooks.
# Usage: ./scripts/install-routr.sh

set -euo pipefail

declare -A BUNDLE_SKILLS
BUNDLE_SKILLS[meta]="playbook-router playbook-common"
BUNDLE_SKILLS[core]="debugging-playbook fix-and-ship-playbook planning-playbook testing-playbook code-review-playbook refactor-playbook deploy-playbook database-playbook e2e-qa-playbook security-review-playbook explore-codebase-playbook library-integration-playbook agent-design-playbook"
BUNDLE_SKILLS[frontend]="frontend-feature-playbook frontend-motion-playbook"
BUNDLE_SKILLS[video]="video-generation-playbook video-launch-playbook video-remotion-playbook"
BUNDLE_SKILLS[mobile]="mobile-expo-playbook"
BUNDLE_SKILLS[marketing]="marketing-seo-playbook"
BUNDLE_SKILLS[ai]="ai-llm-app-playbook"

echo ""
echo "ROUTR — select bundles (comma-separated numbers, or 'a' for all, Enter for skills CLI picker)"
echo ""
echo "  1) Meta (router + catalog)"
echo "  2) Core engineering"
echo "  3) Frontend"
echo "  4) Video"
echo "  5) Mobile"
echo "  6) Marketing & SEO"
echo "  7) AI / LLM apps"
echo "  8) Use skills CLI checkbox picker (recommended if unsure)"
echo ""
read -r -p "Choice [8]: " choice
choice="${choice:-8}"

if [[ "$choice" == "8" ]]; then
  echo ""
  echo "Launching interactive skills CLI (Space = toggle, Enter = confirm)..."
  npx skills add TeckTinkerere/ROUTR -g --copy
  exit 0
fi

keys=(meta core frontend video mobile marketing ai)
selected_skills=()

if [[ "$choice" == "a" || "$choice" == "A" ]]; then
  for k in "${keys[@]}"; do
    selected_skills+=(${BUNDLE_SKILLS[$k]})
  done
else
  IFS=',' read -ra nums <<< "$choice"
  for n in "${nums[@]}"; do
    n=$(echo "$n" | tr -d ' ')
    idx=$((n - 1))
    if [[ $idx -ge 0 && $idx -lt ${#keys[@]} ]]; then
      selected_skills+=(${BUNDLE_SKILLS[${keys[$idx]}]})
    fi
  done
fi

# dedupe
mapfile -t unique_skills < <(printf '%s\n' "${selected_skills[@]}" | sort -u)

if [[ ${#unique_skills[@]} -eq 0 ]]; then
  echo "No bundles selected — cancelled."
  exit 0
fi

skill_args=()
for s in "${unique_skills[@]}"; do
  skill_args+=(--skill "$s")
done

echo ""
echo "Installing ${#unique_skills[@]} playbook(s):"
printf '  - %s\n' "${unique_skills[@]}"
echo ""

npx skills add TeckTinkerere/ROUTR -g --copy -y "${skill_args[@]}"

echo ""
echo "Done. Restart your agent, then type / to search playbooks."
