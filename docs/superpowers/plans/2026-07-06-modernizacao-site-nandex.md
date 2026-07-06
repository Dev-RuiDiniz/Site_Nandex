# Modernização do Site Nandex Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Entregar as três páginas do site Nandex com visual moderno, conteúdo comercial, conversão pelo WhatsApp e contatos validados.

**Architecture:** Site estático sem build, composto por três documentos HTML que compartilham um único stylesheet e um script de interação. Um teste PowerShell inspecionará a estrutura e os destinos comerciais, permitindo validar os requisitos sem adicionar dependências.

**Tech Stack:** HTML5, CSS3, JavaScript puro, SVG inline e PowerShell para testes estruturais.

---

### Task 1: Testes estruturais e comerciais

**Files:**
- Create: `tests/site-checks.ps1`

- [ ] **Step 1: Criar o teste inicialmente falho**

Criar um script que carregue as três páginas e exija: novos IDs de seção, WhatsApp `5518997930933`, Lan House `+551833615830`, horários, botão flutuante, `aria-label`, um `h1` por página e ausência de CTAs genéricos.

- [ ] **Step 2: Executar e confirmar a falha**

Run: `powershell -ExecutionPolicy Bypass -File tests/site-checks.ps1`
Expected: `FAIL` indicando que as novas seções ainda não existem.

- [ ] **Step 3: Manter o teste como contrato da implementação**

O script deve encerrar com código 1 quando houver falhas e imprimir `PASS: verificações estruturais e comerciais concluídas` quando todas passarem.

### Task 2: Estrutura semântica e copy das páginas

**Files:**
- Modify: `index.html`
- Modify: `servicos.html`
- Modify: `contato.html`

- [ ] **Step 1: Implementar a Home comercial**

Adicionar header com âncoras, hero, dores, serviços, empresas, processo, diferenciais, CTA intermediário, contato e footer, usando os dados aprovados na especificação.

- [ ] **Step 2: Implementar o catálogo de serviços**

Adicionar dez cards com ícones, descrições e links contextuais para o WhatsApp.

- [ ] **Step 3: Implementar a página de contato**

Adicionar Assistência, Lan House, e-mail, endereço, horários, formulário e placeholder de mapa.

- [ ] **Step 4: Executar o teste estrutural**

Run: `powershell -ExecutionPolicy Bypass -File tests/site-checks.ps1`
Expected: ainda pode falhar apenas em requisitos de estilo ou interação.

### Task 3: Sistema visual responsivo

**Files:**
- Modify: `assets/css/style.css`

- [ ] **Step 1: Criar tokens e componentes reutilizáveis**

Definir cores corporativas, verde de WhatsApp, tipografia, espaçamento, raios, sombras, botões, cards e estados de foco.

- [ ] **Step 2: Construir os layouts desktop e mobile**

Estilizar hero, grids, processo, seção empresarial, contato, footer, menu móvel e botão flutuante sem rolagem horizontal.

- [ ] **Step 3: Adicionar movimento acessível**

Aplicar transições discretas e neutralizá-las em `@media (prefers-reduced-motion: reduce)`.

### Task 4: Interações e verificação final

**Files:**
- Modify: `assets/js/main.js`
- Test: `tests/site-checks.ps1`

- [ ] **Step 1: Atualizar menu e formulário**

Manter o estado `aria-expanded`, fechar o menu após navegação, validar o formulário e gerar mensagem de WhatsApp com nome, telefone, serviço e mensagem.

- [ ] **Step 2: Executar todos os testes**

Run: `powershell -ExecutionPolicy Bypass -File tests/site-checks.ps1`
Expected: `PASS: verificações estruturais e comerciais concluídas`.

- [ ] **Step 3: Verificar o servidor local**

Run: `Invoke-WebRequest` para as três páginas, CSS, JavaScript e logo.
Expected: HTTP 200 para todos os recursos.

- [ ] **Step 4: Inspecionar o diff**

Run: `git diff --check`
Expected: nenhuma saída e código 0.
