# Imagens Editoriais Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Integrar quatro imagens editoriais otimizadas aos heros de Home, Serviços, Empresas e Sobre.

**Architecture:** Os PNG permanecem como fonte e versões WebP são servidas pelo HTML. Um componente CSS compartilhado controla painel, recorte, overlay e comportamento responsivo.

**Tech Stack:** HTML5, CSS3, WebP e PowerShell.

---

### Task 1: Contrato das imagens

**Files:** Modify tests/site-checks.ps1

- [ ] Exigir os quatro WebP nas páginas designadas, atributos alt, width, height, loading e fetchpriority.
- [ ] Executar o teste e confirmar a falha.

### Task 2: Otimização e integração

**Files:** Create assets/img/imagem_01.webp through imagem_04.webp; Modify index.html, servicos.html, empresas.html, sobre.html, assets/css/style.css

- [ ] Converter os quatro PNG para WebP com qualidade 82 e dimensões originais.
- [ ] Substituir o visual abstrato da Home por imagem_03.webp.
- [ ] Criar hero dividido em Serviços, Empresas e Sobre com as imagens mapeadas.
- [ ] Adicionar estilos de painel editorial e recortes responsivos.

### Task 3: Verificação e entrega

- [ ] Executar testes estruturais, HTTP local e git diff --check.
- [ ] Revisar Home e páginas internas em desktop e mobile.
- [ ] Confirmar que cada WebP é menor que o PNG correspondente.
- [ ] Criar commit único e executar git push origin main.
