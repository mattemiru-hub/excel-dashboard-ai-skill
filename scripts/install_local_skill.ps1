param(
  [string]$TargetRoot = "$env:USERPROFILE\\.codex\\skills"
)

$ErrorActionPreference = "Stop"

$source = Split-Path -Parent $PSScriptRoot
$skillName = Split-Path -Leaf $source
$target = Join-Path $TargetRoot $skillName
$companionRoot = Join-Path $source "companion-skills"

if (-not (Test-Path -LiteralPath $TargetRoot)) {
  New-Item -ItemType Directory -Path $TargetRoot | Out-Null
}

robocopy $source $target /MIR /XD .git __pycache__ | Out-Null

Write-Output "Installed skill to: $target"

if (Test-Path -LiteralPath $companionRoot) {
  Get-ChildItem -LiteralPath $companionRoot -Directory | ForEach-Object {
    $companionTarget = Join-Path $TargetRoot $_.Name
    robocopy $_.FullName $companionTarget /MIR /XD .git __pycache__ | Out-Null
    Write-Output "Installed companion skill to: $companionTarget"
  }
}
