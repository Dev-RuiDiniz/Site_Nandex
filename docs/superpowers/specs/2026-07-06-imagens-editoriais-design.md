# Imagens editoriais do site Nandex

## Objetivo

Integrar as quatro imagens fornecidas às páginas do site como elementos editoriais de hero, preservando legibilidade, desempenho e consistência visual.

## Distribuição aprovada

- Home: imagem_03.png, bancada de assistência técnica, substituindo a composição abstrata NX.
- Serviços: imagem_01.png, hardware e diagnóstico.
- Empresas: imagem_04.png, redes, servidores e conectividade.
- Sobre: imagem_02.png, tecnologia e segurança.
- Contato: permanece sem imagem para manter foco no formulário.

## Tratamento visual

- Cada imagem ocupará um painel editorial dentro ou ao lado do hero.
- O recorte usará object-fit cover e object-position específico por página.
- Bordas, sombra e overlay azul seguirão a identidade tech editorial atual.
- A Home manterá layout em duas colunas; páginas internas receberão hero dividido entre texto e imagem.
- No celular, a imagem será exibida abaixo da copy, com altura reduzida e recorte controlado.

## Desempenho

- Gerar versões WebP otimizadas a partir dos PNG.
- Manter os PNG originais em assets/img como arquivos-fonte.
- Usar as versões WebP no HTML.
- Definir width e height nos elementos de imagem.
- Usar fetchpriority high na Home e loading lazy nas páginas internas.

## Acessibilidade

- Todas as imagens terão alt text contextual.
- Overlays serão decorativos e implementados em CSS.
- O contraste do conteúdo textual não dependerá da imagem.

## Critérios de aceite

- Home, Serviços, Empresas e Sobre exibem a imagem designada.
- Contato mantém o layout sem imagem editorial.
- Nenhuma imagem é deformada.
- Os WebP são menores que seus PNG de origem.
- Layouts desktop e mobile não apresentam overflow.
- Testes existentes e verificação HTTP continuam aprovados.
