# Site Multipágina Nandex e Vercel Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox syntax for tracking.

**Goal:** Separar o site em cinco páginas institucionais e publicar uma versão de produção na Vercel.

**Architecture:** HTML estático com CSS e JavaScript compartilhados. A Vercel servirá os arquivos diretamente com cleanUrls ativado.

**Tech Stack:** HTML5, CSS3, JavaScript, PowerShell e Vercel.

---

### Task 1: Contrato multipágina

**Files:** Modify tests/site-checks.ps1

- [ ] Exigir cinco páginas, menu completo, h1 único, contatos, WhatsApp e estado ativo.
- [ ] Executar o teste e confirmar falha pela ausência de empresas.html e sobre.html.

### Task 2: Páginas e navegação

**Files:** Modify index.html, servicos.html, contato.html; Create empresas.html, sobre.html

- [ ] Resumir a Home e apontar os detalhes para páginas próprias.
- [ ] Criar a página Empresas com soluções, benefícios, processo e CTA.
- [ ] Criar a página Sobre com história, valores, diferenciais e processo.
- [ ] Atualizar menu e footer nas cinco páginas.
- [ ] Preservar o SVG flutuante do WhatsApp em todas.

### Task 3: URLs limpas e validação

**Files:** Create vercel.json; Modify assets/css/style.css

- [ ] Adicionar estilos necessários às páginas dedicadas.
- [ ] Configurar cleanUrls e trailingSlash false.
- [ ] Executar testes, HTTP local e git diff --check.

### Task 4: Publicação

**Files:** All changed files

- [ ] Criar commit da implementação.
- [ ] Fazer push para origin/main.
- [ ] Executar vercel deploy . --prod -y.
- [ ] Entregar a URL pública retornada pela Vercel.
