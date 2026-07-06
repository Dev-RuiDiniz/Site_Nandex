$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
$pages = @('index.html', 'servicos.html', 'contato.html')
$failures = [System.Collections.Generic.List[string]]::new()

function Require([bool]$condition, [string]$message) {
  if (-not $condition) { $script:failures.Add($message) }
}

foreach ($page in $pages) {
  $html = Get-Content -Raw -Encoding UTF8 (Join-Path $root $page)
  Require (($html | Select-String -Pattern '<h1[ >]' -AllMatches).Matches.Count -eq 1) "$page deve ter exatamente um h1"
  Require ($html -match '5518997930933') "$page deve conter o WhatsApp da Assistência"
  Require ($html -match '\+551833615830') "$page deve conter o telefone da Lan House"
  Require ($html -match 'whatsapp-float') "$page deve conter botão flutuante do WhatsApp"
}

$homeHtml = Get-Content -Raw -Encoding UTF8 (Join-Path $root 'index.html')
@('problemas', 'servicos', 'empresas', 'processo', 'sobre', 'contato') | ForEach-Object {
  Require ($homeHtml -match ('id="' + $_ + '"')) "Home deve conter a seção #$_"
}
Require ($homeHtml -match 'Desde 2008') 'Home deve informar Desde 2008'
Require ($homeHtml -match '18 anos') 'Home deve informar mais de 18 anos'

$services = Get-Content -Raw -Encoding UTF8 (Join-Path $root 'servicos.html')
Require ((($services | Select-String -Pattern 'class="service-card' -AllMatches).Matches.Count) -ge 10) 'Serviços deve ter pelo menos 10 cards'
Require ((($services | Select-String -Pattern 'Consultar este servi' -AllMatches).Matches.Count) -ge 10) 'Cada serviço deve ter micro-CTA'

$contact = Get-Content -Raw -Encoding UTF8 (Join-Path $root 'contato.html')
Require ($contact -match '08:30') 'Contato deve informar horário de segunda a sexta'
Require ($contact -match '09:00') 'Contato deve informar horário de sábado'
Require ($contact -match 'data-contact-form') 'Contato deve conter formulário para WhatsApp'

$css = Get-Content -Raw -Encoding UTF8 (Join-Path $root 'assets/css/style.css')
Require ($css -match 'prefers-reduced-motion') 'CSS deve respeitar movimento reduzido'
Require ($css -match '--color-whatsapp') 'CSS deve reservar token verde para WhatsApp'

if ($failures.Count -gt 0) {
  $failures | ForEach-Object { Write-Host "FAIL: $_" -ForegroundColor Red }
  exit 1
}

Write-Host 'PASS: verificações estruturais e comerciais concluídas' -ForegroundColor Green
