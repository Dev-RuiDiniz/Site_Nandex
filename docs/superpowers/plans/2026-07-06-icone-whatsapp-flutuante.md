# Ícone do WhatsApp Flutuante Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox syntax for tracking.

**Goal:** Trocar as letras WA por um SVG branco do WhatsApp somente nos botões flutuantes.

**Architecture:** O SVG será embutido nos três documentos HTML para manter o site sem dependências. O CSS controlará seu tamanho e o teste estrutural garantirá a presença do ícone e a ausência do texto antigo.

**Tech Stack:** HTML5, CSS3 e PowerShell.

---

### Task 1: Contrato e implementação do ícone

**Files:**
- Modify: tests/site-checks.ps1
- Modify: index.html
- Modify: servicos.html
- Modify: contato.html
- Modify: assets/css/style.css

- [ ] **Step 1: Adicionar teste falho**

Exigir a classe whatsapp-icon e rejeitar o texto WA em cada botão flutuante.

- [ ] **Step 2: Confirmar a falha**

Run: powershell -ExecutionPolicy Bypass -File tests/site-checks.ps1
Expected: FAIL informando ausência do SVG.

- [ ] **Step 3: Inserir SVG**

Substituir WA em cada whatsapp-float por um SVG embutido com o path do símbolo.

- [ ] **Step 4: Dimensionar o ícone**

Adicionar largura e altura de 30px com preenchimento currentColor.

- [ ] **Step 5: Verificar**

Run: powershell -ExecutionPolicy Bypass -File tests/site-checks.ps1
Expected: PASS.
