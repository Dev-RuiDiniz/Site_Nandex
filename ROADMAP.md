# ROADMAP.md — Landing Page Rebranding Nandex

## 1. Objetivo do roadmap

Este roadmap define o plano de execução para transformar o frontend rebrandável da Nandex em uma landing page comercial, moderna, responsiva e pronta para publicação.

A abordagem utilizada será **Spec-Driven Development**, ou seja: antes de implementar cada parte da landing page, devem ser definidas especificações claras de negócio, conteúdo, design, componentes, comportamento, critérios de aceite e validação.

O foco é evitar retrabalho, alinhar expectativa com o cliente e garantir que a landing page seja construída com base em requisitos aprovados, não apenas em decisões visuais soltas.

---

## 2. Escopo principal da landing page

A landing page deve apresentar a Nandex como uma empresa de informática confiável, com atuação em assistência técnica, manutenção, venda de equipamentos, suporte, redes e atendimento residencial/comercial.

### Páginas previstas

- Home / Landing Page principal
- Serviços
- Contato

### Arquivos já existentes no projeto

- `index.html`
- `servicos.html`
- `contato.html`
- `assets/css/style.css`
- `assets/js/main.js`
- `assets/img/logo-nandex-rebrand.svg`
- `MAPEAMENTO_REBRANDING_NANDEX.md`
- `README.md`

---

## 3. Princípios de Spec-Driven Development aplicados

Cada funcionalidade ou seção da landing page deve seguir este fluxo:

```text
1. Descoberta do requisito
2. Escrita da especificação
3. Aprovação da especificação
4. Design da seção/componente
5. Implementação
6. Testes e validação
7. Ajustes finais
8. Publicação
```

### Regra principal

Nenhuma seção importante deve ser implementada definitivamente antes de ter:

- objetivo definido;
- público-alvo definido;
- conteúdo aprovado;
- critério de aceite definido;
- comportamento mobile definido;
- CTA definido;
- métricas ou eventos definidos, quando aplicável.

---

## 4. Fase 0 — Validação inicial com o cliente

### Objetivo

Confirmar informações essenciais antes de finalizar a landing page.

### Itens a validar

- Nome comercial final: `Nandex`, `Nandex Informática` ou `Nandex Tecnologia`.
- Logo final aprovado.
- Paleta de cores final.
- Telefone fixo correto.
- WhatsApp correto.
- E-mail comercial correto.
- Endereço comercial correto.
- Horário de atendimento.
- Área de atendimento.
- Serviços que devem ter destaque.
- Serviços que não devem aparecer.
- Diferenciais reais da empresa.
- Fotos reais da loja, equipe, bancada, equipamentos e atendimentos.
- Link correto do Google Maps.
- Tom da comunicação: mais técnico, mais popular ou mais empresarial.

### Critérios de aceite

- Todas as informações de contato estão confirmadas.
- O cliente aprovou o nome e posicionamento da marca.
- Existe uma lista final de serviços prioritários.
- Existe autorização para uso de imagens, textos e identidade visual.

### Status

```text
Pendente
```

---

## 5. Fase 1 — Product Spec

### Objetivo

Definir o propósito comercial da landing page.

### Especificação

A landing page deve converter visitantes em contatos pelo WhatsApp, telefone ou formulário. O visitante precisa entender rapidamente:

- quem é a Nandex;
- quais problemas ela resolve;
- quais serviços oferece;
- por que confiar na empresa;
- como solicitar atendimento.

### Público-alvo

- Clientes residenciais com problemas em computadores, notebooks, periféricos e redes domésticas.
- Pequenas empresas que precisam de manutenção, suporte e infraestrutura básica de TI.
- Clientes que buscam compra de peças, acessórios e equipamentos de informática.
- Clientes locais que procuram assistência técnica confiável.

### Objetivos de conversão

- Clique no botão de WhatsApp.
- Clique em telefone.
- Envio de mensagem pelo formulário.
- Clique em rota/endereço no Google Maps.
- Acesso à página de serviços.

### Critérios de aceite

- A proposta de valor aparece no primeiro bloco da página.
- Existe pelo menos um CTA visível antes da primeira rolagem.
- O usuário consegue solicitar atendimento em até 2 cliques.
- O site funciona bem em celular.

### Status

```text
Pendente de validação
```

---

## 6. Fase 2 — Brand Spec

### Objetivo

Definir a identidade visual da nova landing page.

### Direção visual sugerida

A marca deve transmitir:

- confiança;
- tecnologia;
- atendimento próximo;
- experiência;
- solução rápida;
- profissionalismo.

### Paleta sugerida

```text
Azul principal: #0EA5E9
Azul escuro: #0F172A
Azul apoio: #0369A1
Branco: #FFFFFF
Fundo claro: #F8FAFC
Texto cinza: #334155
```

### Tipografia sugerida

- Fonte principal: Inter, Arial ou sistema nativo.
- Peso forte para títulos.
- Texto simples e legível para público geral.

### Estilo visual

- Layout limpo.
- Cards com bordas suaves.
- Botões claros e chamativos.
- Ícones simples.
- Uso moderado de efeitos.
- Imagens reais sempre que possível.

### Critérios de aceite

- A identidade parece mais moderna que o site atual.
- A comunicação visual é consistente em todas as páginas.
- O contraste está adequado para leitura.
- Os botões de ação se destacam.
- O layout não depende de imagens antigas do site original.

### Status

```text
Parcialmente criado
```

---

## 7. Fase 3 — Content Spec

### Objetivo

Definir os textos finais da landing page antes da implementação definitiva.

### Seções da Home

#### 7.1 Hero

**Objetivo:** explicar rapidamente o que a empresa faz e levar o usuário ao contato.

**Conteúdo necessário:**

- Título principal.
- Subtítulo curto.
- CTA principal para WhatsApp.
- CTA secundário para serviços.
- Destaques rápidos: experiência, atendimento local, suporte completo.

**Critérios de aceite:**

- O visitante entende o serviço em menos de 5 segundos.
- O CTA principal está claro.
- O texto não é longo demais.

---

#### 7.2 Bloco de serviços principais

**Objetivo:** mostrar rapidamente as principais soluções.

**Serviços sugeridos:**

- Manutenção de notebooks.
- Manutenção de computadores.
- Venda de peças e equipamentos.
- Instalação e configuração de softwares.
- Remoção de vírus e otimização.
- Redes e suporte técnico.

**Critérios de aceite:**

- Cada serviço tem título, descrição curta e benefício.
- Os cards são fáceis de ler no celular.
- Existe CTA para ver todos os serviços.

---

#### 7.3 Bloco institucional

**Objetivo:** reforçar confiança.

**Informações sugeridas:**

- Empresa iniciada em 2008.
- Mais de 16 anos de experiência.
- Atendimento residencial, comercial e empresarial.
- Suporte completo em informática.

**Critérios de aceite:**

- O texto é direto.
- Não parece genérico.
- Mostra experiência e proximidade.

---

#### 7.4 Bloco de diferenciais

**Objetivo:** mostrar por que escolher a empresa.

**Diferenciais possíveis:**

- Atendimento técnico especializado.
- Diagnóstico claro.
- Soluções para residência e empresa.
- Atendimento em domicílio, se confirmado.
- Venda e manutenção no mesmo lugar.
- Suporte para redes e computadores.

**Critérios de aceite:**

- Os diferenciais são reais e aprovados pelo cliente.
- Não há promessas exageradas.
- A linguagem é comercial, mas honesta.

---

#### 7.5 Bloco de CTA final

**Objetivo:** capturar contato no final da página.

**Conteúdo necessário:**

- Chamada curta.
- Botão para WhatsApp.
- Botão para contato.
- Reforço de atendimento rápido.

**Critérios de aceite:**

- O usuário tem uma ação clara no fim da página.
- O botão funciona em desktop e mobile.

---

## 8. Fase 4 — UI Spec

### Objetivo

Definir o comportamento visual das páginas e componentes.

### Componentes principais

#### Header

**Requisitos:**

- Logo à esquerda.
- Menu à direita.
- Botão de WhatsApp ou atendimento.
- Menu mobile funcional.
- Estado ativo da página atual.

**Critérios de aceite:**

- Funciona em desktop, tablet e celular.
- Não quebra em telas pequenas.
- O menu mobile abre e fecha corretamente.

---

#### Botões

**Tipos:**

- Botão primário: WhatsApp / orçamento.
- Botão secundário: serviços / contato.
- Botão de link: telefone, e-mail, mapa.

**Critérios de aceite:**

- Têm contraste adequado.
- São fáceis de clicar no celular.
- Possuem hover/focus visível.

---

#### Cards de serviço

**Requisitos:**

- Ícone ou elemento visual.
- Título.
- Descrição curta.
- Link ou CTA opcional.

**Critérios de aceite:**

- Mantêm altura visual equilibrada.
- São legíveis em mobile.
- Não dependem de imagens pesadas.

---

#### Formulário de contato

**Campos mínimos:**

- Nome.
- Telefone ou WhatsApp.
- Tipo de serviço.
- Mensagem.

**Comportamento recomendado:**

- Ao enviar, abrir WhatsApp com mensagem formatada.
- Validar campos obrigatórios.
- Exibir feedback visual.

**Critérios de aceite:**

- Não envia dados vazios.
- A mensagem gerada no WhatsApp é clara.
- Funciona em mobile.

---

## 9. Fase 5 — Technical Spec

### Objetivo

Definir a base técnica da landing page.

### Stack atual

```text
HTML5
CSS3
JavaScript puro
SVG
```

### Estrutura sugerida

```text
nandex-rebrand-frontend/
├── index.html
├── servicos.html
├── contato.html
├── ROADMAP.md
├── README.md
├── MAPEAMENTO_REBRANDING_NANDEX.md
└── assets/
    ├── css/
    │   └── style.css
    ├── js/
    │   └── main.js
    └── img/
        └── logo-nandex-rebrand.svg
```

### Requisitos técnicos

- HTML semântico.
- CSS organizado por variáveis.
- Layout mobile-first.
- JavaScript simples, sem dependências externas desnecessárias.
- Código fácil de hospedar em hospedagem comum, Vercel, Netlify ou Cloudflare Pages.
- Compatibilidade com navegadores modernos.
- Imagens otimizadas.
- SEO básico configurado.
- Metatags sociais configuradas.
- Acessibilidade básica.

### Critérios de aceite

- A página carrega corretamente sem build.
- O projeto pode ser aberto diretamente pelo `index.html`.
- O menu mobile funciona.
- O formulário abre WhatsApp corretamente.
- Não há dependência de código proprietário do site antigo.

---

## 10. Fase 6 — SEO Spec

### Objetivo

Preparar a landing page para busca local e serviços de informática.

### Requisitos de SEO

- Title otimizado por página.
- Meta description por página.
- Heading `h1` único por página.
- Hierarquia correta de `h2` e `h3`.
- Conteúdo com termos locais e serviços principais.
- Alt text nas imagens.
- Links internos entre páginas.
- Schema LocalBusiness, se possível.
- Sitemap e robots.txt, se o projeto for publicado.

### Palavras-chave sugeridas

- assistência técnica informática;
- manutenção de notebook;
- manutenção de computador;
- suporte técnico informática;
- loja de informática;
- redes de computadores;
- remoção de vírus;
- atendimento técnico em domicílio;
- informática em Santos, caso a cidade seja confirmada.

### Critérios de aceite

- Cada página possui título e descrição próprios.
- A landing page tem conteúdo suficiente para indexação.
- Os termos principais aparecem de forma natural.
- O endereço e contatos estão padronizados.

---

## 11. Fase 7 — Analytics e eventos

### Objetivo

Permitir medir conversões da landing page.

### Eventos recomendados

- Clique no WhatsApp no header.
- Clique no WhatsApp no hero.
- Clique no WhatsApp no CTA final.
- Clique no telefone.
- Clique no e-mail.
- Clique no Google Maps.
- Envio do formulário de contato.
- Clique em serviços.

### Ferramentas possíveis

- Google Analytics 4.
- Google Tag Manager.
- Microsoft Clarity.
- Pixel Meta, se houver campanhas.

### Critérios de aceite

- Os principais cliques são rastreados.
- O cliente consegue saber de onde vêm os contatos.
- Eventos não quebram a experiência do usuário.

---

## 12. Fase 8 — Backlog de implementação

### Prioridade alta

| ID | Item | Descrição | Status |
|---|---|---|---|
| SDD-001 | Validar informações comerciais | Confirmar telefone, WhatsApp, endereço, e-mail e horários | Pendente |
| SDD-002 | Revisar copy da Home | Ajustar textos para conversão | Pendente |
| SDD-003 | Ajustar CTAs | Padronizar botões para WhatsApp/orçamento | Pendente |
| SDD-004 | Melhorar SEO básico | Title, description, headings e alt text | Pendente |
| SDD-005 | Validar formulário | Garantir abertura correta no WhatsApp | Pendente |
| SDD-006 | Testar responsividade | Mobile, tablet e desktop | Pendente |
| SDD-007 | Inserir Google Maps real | Substituir placeholder pelo mapa correto | Pendente |
| SDD-008 | Substituir logo conceitual | Inserir logo aprovado pelo cliente | Pendente |

### Prioridade média

| ID | Item | Descrição | Status |
|---|---|---|---|
| SDD-009 | Adicionar fotos reais | Loja, equipe, bancada e equipamentos | Pendente |
| SDD-010 | Criar seção de depoimentos | Inserir avaliações reais, se disponíveis | Pendente |
| SDD-011 | Adicionar FAQ | Perguntas frequentes sobre atendimento, orçamento e garantia | Pendente |
| SDD-012 | Adicionar schema LocalBusiness | Marcação estruturada para SEO local | Pendente |
| SDD-013 | Criar página de política de privacidade | Necessário se houver formulário/analytics | Pendente |
| SDD-014 | Configurar analytics | GA4, GTM ou Clarity | Pendente |

### Prioridade baixa

| ID | Item | Descrição | Status |
|---|---|---|---|
| SDD-015 | Blog ou área de dicas | Conteúdo para SEO futuro | Futuro |
| SDD-016 | Integração com CRM | Enviar leads para planilha, CRM ou automação | Futuro |
| SDD-017 | Página individual por serviço | Melhorar SEO por categoria | Futuro |
| SDD-018 | Chatbot de atendimento | Atendimento inicial automatizado | Futuro |

---

## 13. Specs detalhadas por página

## 13.1 `index.html` — Landing Page principal

### Objetivo

Ser a principal página de conversão do site.

### Seções obrigatórias

- Header.
- Hero com CTA.
- Serviços principais.
- Diferenciais.
- Sobre a empresa.
- CTA final.
- Footer.

### Critérios de aceite

- Carrega rápido.
- Tem CTA visível no topo.
- Explica a empresa de forma clara.
- Apresenta os serviços principais.
- Facilita contato pelo WhatsApp.

---

## 13.2 `servicos.html` — Página de serviços

### Objetivo

Organizar todos os serviços em categorias comerciais.

### Categorias sugeridas

- Manutenção de computadores.
- Manutenção de notebooks.
- Peças e upgrades.
- Instalação de sistemas e programas.
- Segurança, vírus e otimização.
- Redes, internet e infraestrutura.
- Atendimento para empresas.

### Critérios de aceite

- Cada serviço tem descrição clara.
- Os serviços são fáceis de escanear.
- Existe CTA para orçamento.
- A página não é apenas uma lista longa de texto.

---

## 13.3 `contato.html` — Página de contato

### Objetivo

Facilitar contato rápido com a empresa.

### Conteúdo obrigatório

- Telefone.
- WhatsApp.
- E-mail.
- Endereço.
- Horário de atendimento.
- Formulário com abertura para WhatsApp.
- Mapa incorporado.

### Critérios de aceite

- O usuário consegue falar com a empresa rapidamente.
- O formulário gera mensagem compreensível.
- O endereço está correto.
- O mapa abre o local certo.

---

## 14. Test Plan

### Testes funcionais

- Verificar links do menu.
- Verificar botão de WhatsApp.
- Verificar telefone clicável.
- Verificar e-mail clicável.
- Verificar formulário de contato.
- Verificar menu mobile.
- Verificar links entre páginas.

### Testes visuais

- Desktop 1920px.
- Notebook 1366px.
- Tablet 768px.
- Mobile 390px.
- Mobile 360px.

### Testes de conteúdo

- Conferir ortografia.
- Conferir dados comerciais.
- Conferir promessas comerciais.
- Conferir se serviços estão corretos.
- Conferir se não há informações inventadas.

### Testes de performance

- Verificar peso das imagens.
- Verificar carregamento inicial.
- Verificar CSS não utilizado.
- Verificar fontes externas.
- Verificar pontuação no Lighthouse.

### Testes de acessibilidade

- Verificar contraste.
- Verificar navegação por teclado.
- Verificar foco em botões.
- Verificar `alt` em imagens.
- Verificar hierarquia de títulos.

---

## 15. Definition of Ready

Uma tarefa está pronta para desenvolvimento quando possui:

- objetivo claro;
- conteúdo aprovado;
- comportamento esperado;
- critério de aceite;
- impacto visual conhecido;
- dependências identificadas;
- prioridade definida.

---

## 16. Definition of Done

Uma tarefa está concluída quando:

- foi implementada no arquivo correto;
- passou nos testes funcionais;
- passou em revisão visual mobile e desktop;
- não quebrou outras páginas;
- está responsiva;
- segue o padrão visual do projeto;
- possui textos revisados;
- possui links funcionando;
- atende aos critérios de aceite definidos.

---

## 17. Ordem recomendada de execução

```text
1. Validar dados reais do cliente
2. Aprovar Product Spec
3. Aprovar Brand Spec
4. Aprovar Content Spec
5. Ajustar Home
6. Ajustar Serviços
7. Ajustar Contato
8. Aplicar SEO básico
9. Aplicar responsividade fina
10. Inserir analytics/eventos
11. Testar performance
12. Testar acessibilidade
13. Revisar com o cliente
14. Publicar em ambiente de homologação
15. Publicar em produção
```

---

## 18. Checklist de publicação

- [ ] Nome final da marca confirmado.
- [ ] Logo final inserido.
- [ ] Paleta aprovada.
- [ ] WhatsApp correto.
- [ ] Telefone correto.
- [ ] E-mail correto.
- [ ] Endereço correto.
- [ ] Horário correto.
- [ ] Google Maps correto.
- [ ] Textos revisados.
- [ ] Serviços revisados.
- [ ] Imagens otimizadas.
- [ ] SEO básico aplicado.
- [ ] Metatags sociais aplicadas.
- [ ] Favicon criado.
- [ ] Formulário testado.
- [ ] Menu mobile testado.
- [ ] Links testados.
- [ ] Layout testado no celular.
- [ ] Layout testado no desktop.
- [ ] Analytics instalado, se aprovado.
- [ ] Política de privacidade criada, se necessário.
- [ ] Backup do projeto feito.
- [ ] Deploy realizado.

---

## 19. Prompt base para continuar o desenvolvimento com IA

Use este prompt para evoluir o projeto mantendo a abordagem Spec-Driven Development:

```text
Você é um desenvolvedor frontend especialista em landing pages comerciais e Spec-Driven Development.

Antes de alterar qualquer arquivo, leia o ROADMAP.md, README.md e MAPEAMENTO_REBRANDING_NANDEX.md.

Objetivo: evoluir a landing page rebrandável da Nandex mantendo HTML, CSS e JavaScript simples, sem copiar código proprietário do site antigo.

Regras:
1. Não implemente se a spec não estiver clara.
2. Para cada alteração, informe qual item do ROADMAP.md está sendo atendido.
3. Mantenha o projeto responsivo e mobile-first.
4. Preserve a identidade visual definida.
5. Não invente dados comerciais do cliente.
6. Use placeholders quando telefone, WhatsApp, endereço ou fotos ainda não estiverem validados.
7. Garanta acessibilidade básica, SEO básico e performance.
8. Atualize o ROADMAP.md quando uma tarefa mudar de status.
```

---

## 20. Observações importantes

Este projeto deve ser tratado como uma recriação visual e comercial baseada em mapeamento público, não como cópia direta do frontend antigo.

Não copiar:

- código proprietário;
- tema WordPress original;
- CSS do tema antigo;
- scripts do site antigo;
- imagens sem autorização;
- elementos protegidos sem permissão.

Pode aproveitar:

- estrutura de negócio;
- serviços oferecidos;
- posicionamento público;
- informações comerciais confirmadas;
- nova identidade visual aprovada;
- arquitetura frontend própria.

---

## 21. Status geral

```text
Roadmap criado.
Frontend inicial criado.
Próxima etapa: validação de dados reais e aprovação das specs com o cliente.
```
