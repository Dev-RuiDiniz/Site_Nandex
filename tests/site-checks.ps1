$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
$pages = @('index.html','servicos.html','empresas.html','sobre.html','contato.html')
$failures = [System.Collections.Generic.List[string]]::new()
function Require([bool]$condition,[string]$message){if(-not $condition){$script:failures.Add($message)}}

foreach($page in $pages){
  $path = Join-Path $root $page
  Require (Test-Path $path) "$page deve existir"
  if(-not (Test-Path $path)){continue}
  $html = Get-Content -Raw -Encoding UTF8 $path
  Require (($html | Select-String -Pattern '<h1[ >]' -AllMatches).Matches.Count -eq 1) "$page deve ter exatamente um h1"
  Require ($html -match '5518997930933') "$page deve conter o WhatsApp da Assistência"
  Require ($html -match '\+551833615830') "$page deve conter o telefone da Lan House"
  Require ($html -match 'class="whatsapp-icon"') "$page deve conter o símbolo do WhatsApp"
  Require ($html -match 'family=Sora') "$page deve carregar a fonte Sora"
  Require ($html -match 'family=Manrope') "$page deve carregar a fonte Manrope"
  @('index.html','servicos.html','empresas.html','sobre.html','contato.html') | ForEach-Object {
    Require ($html -match [regex]::Escape($_)) "$page deve navegar para $_"
  }
}

$homeHtml = Get-Content -Raw -Encoding UTF8 (Join-Path $root 'index.html')
Require ($homeHtml -notmatch 'id="processo"') 'Home não deve concentrar o processo completo'
Require ($homeHtml -notmatch 'id="sobre"') 'Home não deve concentrar a página Sobre'
Require ($homeHtml -match 'Desde 2008') 'Home deve manter prova de experiência'
Require ($homeHtml -match 'Tecnologia travou') 'Home deve usar a nova headline editorial'
Require ($homeHtml -notmatch 'Seu computador, notebook ou rede parou') 'Home não deve manter a headline genérica anterior'
Require ($homeHtml -match 'imagem_03\.webp') 'Home deve usar a imagem editorial da bancada técnica'
Require ($homeHtml -match 'fetchpriority="high"') 'Imagem principal da Home deve ter prioridade alta'

$services = Get-Content -Raw -Encoding UTF8 (Join-Path $root 'servicos.html')
Require ((($services | Select-String -Pattern 'class="service-card' -AllMatches).Matches.Count) -ge 10) 'Serviços deve ter dez cards'
Require ($services -match 'imagem_01\.webp') 'Serviços deve usar a imagem editorial de hardware'

if(Test-Path (Join-Path $root 'empresas.html')){
  $business = Get-Content -Raw -Encoding UTF8 (Join-Path $root 'empresas.html')
  Require ($business -match 'Suporte de TI') 'Empresas deve apresentar suporte de TI'
  Require ($business -match 'Toda parada custa') 'Empresas deve usar copy orientada ao impacto operacional'
  Require ($business -match 'imagem_04\.webp') 'Empresas deve usar a imagem editorial de redes'
}
if(Test-Path (Join-Path $root 'sobre.html')){
  $about = Get-Content -Raw -Encoding UTF8 (Join-Path $root 'sobre.html')
  Require ($about -match '2008') 'Sobre deve apresentar a história desde 2008'
  Require ($about -match 'tecnologia tem que simplificar') 'Sobre deve usar a nova voz editorial'
  Require ($about -match 'imagem_02\.webp') 'Sobre deve usar a imagem editorial institucional'
}

$contact = Get-Content -Raw -Encoding UTF8 (Join-Path $root 'contato.html')
Require ($contact -match '08:30' -and $contact -match '09:00') 'Contato deve informar os horários'
Require ($contact -match 'data-contact-form') 'Contato deve conter formulário'
Require ($contact -match 'Vamos tirar esse problema da frente') 'Contato deve usar convite direto e humano'

$css = Get-Content -Raw -Encoding UTF8 (Join-Path $root 'assets/css/style.css')
Require ($css -match 'prefers-reduced-motion') 'CSS deve respeitar movimento reduzido'
Require ($css -match '--color-whatsapp') 'CSS deve reservar verde para WhatsApp'
Require ($css -match '--font-display') 'CSS deve declarar token de fonte display'
Require ($css -match '--font-body') 'CSS deve declarar token de fonte de leitura'
Require ($css -match '\.editorial-media') 'CSS deve definir o painel editorial compartilhado'

if($failures.Count){$failures|ForEach-Object{Write-Host "FAIL: $_" -ForegroundColor Red};exit 1}
Write-Host 'PASS: site multipágina validado' -ForegroundColor Green
