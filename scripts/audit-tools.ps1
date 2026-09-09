$ErrorActionPreference = 'Continue'

function Write-Status([string]$Name, [string]$State, [string]$Detail) {
  "{0,-18} {1,-22} {2}" -f $Name, $State, $Detail
}

function Find-Command([string]$Name) {
  return Get-Command $Name -ErrorAction SilentlyContinue
}

Write-Output 'IA-REPOS tool audit'
Write-Output '====================='

foreach ($name in @('git', 'node', 'npm', 'npx')) {
  $command = Find-Command $name
  if ($command) {
    $version = & $command.Source --version 2>$null | Select-Object -First 1
    Write-Status $name 'INSTALLED' $version
  } else {
    Write-Status $name 'NOT INSTALLED' 'Executable not found'
  }
}

$agent = Find-Command 'agent-browser'
if ($agent) {
  Write-Status 'Agent Browser' 'INSTALLED' (& $agent.Source --version 2>$null | Select-Object -First 1)
} elseif (Test-Path "$PSScriptRoot/../tools/agent-browser/node_modules/.bin/agent-browser.cmd") {
  Write-Status 'Agent Browser' 'AVAILABLE ON DEMAND' 'Local dependency installed; use npm run install-browser'
} else {
  Write-Status 'Agent Browser' 'AVAILABLE ON DEMAND' 'Local manifest present; run npm install in tools/agent-browser'
}

$remotion = "$PSScriptRoot/../tools/video-factory/node_modules/.bin/remotion.cmd"
if (Test-Path $remotion) {
  Write-Status 'Remotion' 'INSTALLED' (& $remotion --version 2>$null | Select-Object -First 1)
} else {
  Write-Status 'Remotion' 'AVAILABLE ON DEMAND' 'Local manifest present; run npm install in tools/video-factory'
}

foreach ($name in @('vercel', 'supabase')) {
  $command = Find-Command $name
  if ($command) {
    Write-Status $name 'INSTALLED' (& $command.Source --version 2>$null | Select-Object -First 1)
  } else {
    Write-Status $name 'NOT INSTALLED' 'CLI not found; check CAPABILITIES.md for connector status'
  }
}

Write-Status 'Connector state' 'NOT APPLICABLE' 'Check CAPABILITIES.md; shell audits cannot inspect Codex plugins/connectors'
