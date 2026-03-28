# check-prd skill installer for Windows (PowerShell)

$target = "$env:USERPROFILE\.claude\skills"

Write-Host "Installing check-prd skill..."
Write-Host "Target: $target"

New-Item -ItemType Directory -Force -Path $target | Out-Null

$files = Get-Item "check-prd*.md"
foreach ($file in $files) {
    Copy-Item $file.FullName $target
}

$count = $files.Count
Write-Host ""
Write-Host "Done! $count files installed to $target"
Write-Host ""
Write-Host "Usage:"
Write-Host "  1. Open Claude Code"
Write-Host "  2. Switch to Opus: /model claude-opus-4-6"
Write-Host "  3. Run: /check-prd your-prd-file.pdf"
