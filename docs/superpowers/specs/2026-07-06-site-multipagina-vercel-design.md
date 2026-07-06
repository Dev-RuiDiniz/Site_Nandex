# Site multipágina Nandex e publicação na Vercel

## Objetivo

Converter a Home longa em um site institucional com cinco páginas independentes e publicar o resultado em produção na Vercel.

## Arquitetura aprovada

O projeto continuará em HTML, CSS e JavaScript puros, sem framework ou etapa de build. Cada página terá documento HTML próprio, metadados, um único h1 e navegação consistente.

### Páginas

- index.html: hero, prova de experiência, resumo dos serviços, chamada comercial e contatos essenciais.
- servicos.html: catálogo dos dez serviços e CTAs contextuais.
- empresas.html: soluções empresariais, benefícios, processo e CTA específico.
- sobre.html: história desde 2008, valores, diferenciais e processo geral.
- contato.html: endereço, horários, Assistência, Lan House, formulário e placeholder de mapa.

## Componentes compartilhados

- Header com links para Início, Serviços, Empresas, Sobre e Contato.
- Estado ativo correto em cada página.
- Footer com navegação, serviços e contatos.
- Botão flutuante com símbolo SVG do WhatsApp.
- WhatsApp da Assistência: 5518997930933.
- Telefone da Lan House: +551833615830.

## Distribuição do conteúdo

A Home deixará de concentrar as seções completas de empresas, processo, diferenciais e contato. Ela apresentará resumos e links para as páginas dedicadas. Nenhum conteúdo essencial será removido; ele será reorganizado por intenção do visitante.

## SEO e navegação

- Title e description exclusivos por página.
- Links internos apontando para arquivos HTML localmente.
- Configuração da Vercel com cleanUrls para disponibilizar /servicos, /empresas, /sobre e /contato.
- redirects permanentes não serão necessários, pois os arquivos HTML atuais continuarão válidos.

## Publicação

1. Validar as cinco páginas localmente.
2. Verificar links, WhatsApp, formulário, responsividade e recursos.
3. Criar commit da implementação e enviar ao GitHub.
4. Vincular ou reutilizar o projeto Vercel.
5. Fazer deploy de produção.
6. Confirmar HTTP 200 nas URLs públicas.

## Critérios de aceite

- Existem cinco páginas independentes e acessíveis pelo menu.
- A Home funciona como porta de entrada resumida, não como landing page única.
- O menu indica corretamente a página atual.
- O botão flutuante com símbolo do WhatsApp aparece em todas as páginas.
- Os contatos e horários permanecem corretos.
- Todas as verificações automatizadas passam.
- O deploy de produção da Vercel fica acessível por URL pública.
