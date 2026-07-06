# Ícone do botão flutuante do WhatsApp

## Objetivo

Substituir as letras `WA` pelo símbolo visual do WhatsApp nos botões flutuantes das três páginas.

## Design aprovado

- Alterar somente o botão flutuante circular.
- Manter os demais botões verdes com seus textos atuais.
- Usar SVG branco embutido no HTML, sem biblioteca ou imagem externa.
- Preservar o fundo verde, dimensões, links e comportamento responsivo existentes.
- Preservar o `aria-label` descritivo para leitores de tela.

## Critérios de aceite

- `index.html`, `servicos.html` e `contato.html` exibem o SVG no botão flutuante.
- Nenhum botão flutuante mantém o texto visível `WA`.
- O ícone possui tamanho e contraste adequados.
- Os links continuam apontando para `https://wa.me/5518997930933`.
