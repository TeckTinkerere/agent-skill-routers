# ROUTR bundle installer — pick groups with checkboxes, then install selected playbooks.
# Usage: .\scripts\install-routr.ps1
# Or from repo root after clone: powershell -ExecutionPolicy Bypass -File scripts/install-routr.ps1

$ErrorActionPreference = "Stop"

$bundles = @(
    [PSCustomObject]@{
        Bundle = "Meta"
        Description = "Router + shared catalog"
        Skills = @("playbook-router", "playbook-common")
    }
    [PSCustomObject]@{
        Bundle = "Core engineering"
        Description = "Debug, ship, plan, test, review, refactor, deploy, DB, QA, security, explore"
        Skills = @(
            "debugging-playbook", "fix-and-ship-playbook", "planning-playbook",
            "testing-playbook", "code-review-playbook", "refactor-playbook",
            "deploy-playbook", "database-playbook", "e2e-qa-playbook",
            "security-review-playbook", "explore-codebase-playbook",
            "library-integration-playbook", "agent-design-playbook"
        )
    }
    [PSCustomObject]@{
        Bundle = "Frontend"
        Description = "UI build + motion"
        Skills = @("frontend-feature-playbook", "frontend-motion-playbook")
    }
    [PSCustomObject]@{
        Bundle = "Video"
        Description = "brag, HyperFrames, Remotion routing"
        Skills = @("video-generation-playbook", "video-launch-playbook", "video-remotion-playbook")
    }
    [PSCustomObject]@{
        Bundle = "Mobile"
        Description = "Expo / React Native"
        Skills = @("mobile-expo-playbook")
    }
    [PSCustomObject]@{
        Bundle = "Marketing & SEO"
        Description = "Copy, SEO, growth"
        Skills = @("marketing-seo-playbook")
    }
    [PSCustomObject]@{
        Bundle = "AI / LLM apps"
        Description = "Vercel AI SDK, chat, RAG"
        Skills = @("ai-llm-app-playbook")
    }
)

Write-Host ""
Write-Host "ROUTR — select bundles to install (checkbox grid)" -ForegroundColor Cyan
Write-Host ""

$selected = $bundles | Out-GridView -Title "ROUTR install bundles" -PassThru

if (-not $selected) {
    Write-Host "Cancelled — nothing installed." -ForegroundColor Yellow
    exit 0
}

$skillNames = $selected | ForEach-Object { $_.Skills } | Select-Object -Unique
$skillArgs = ($skillNames | ForEach-Object { "--skill"; $_ })

Write-Host ""
Write-Host "Installing $($skillNames.Count) playbook(s):" -ForegroundColor Green
$skillNames | ForEach-Object { Write-Host "  - $_" }

$npxArgs = @("skills", "add", "TeckTinkerere/ROUTR", "-g", "--copy", "-y") + $skillArgs
& npx @npxArgs

Write-Host ""
Write-Host "Done. Restart Cursor / your agent, then type / to search playbooks." -ForegroundColor Cyan
