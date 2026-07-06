# Modernização comercial do site Nandex

## Objetivo

Modernizar o site da Nandex como uma experiência comercial responsiva, clara e confiável, direcionada à geração de pedidos de orçamento, conversas pelo WhatsApp e visitas técnicas.

## Arquitetura aprovada

O site continuará dividido em três páginas:

- `index.html`: página inicial comercial com hero, problemas comuns, serviços em destaque, suporte para empresas, processo de atendimento, diferenciais, chamada intermediária, localização e contato.
- `servicos.html`: catálogo completo de serviços, com descrição e CTA contextual em cada card.
- `contato.html`: dados comerciais, horários, formulário direcionado ao WhatsApp e área reservada ao mapa.

Todas as páginas compartilharão header fixo, navegação consistente, botão flutuante de WhatsApp e rodapé completo.

## Direção visual

- Aparência tecnológica, premium e acessível para clientes residenciais e pequenos negócios.
- Fundo branco ou off-white, azul profundo e azul elétrico como cores principais.
- Verde utilizado apenas para ações do WhatsApp.
- Logo real `assets/img/logo.nandex.jpeg` no header.
- Tipografia Inter, títulos fortes, textos curtos e amplo espaço em branco.
- Cards com bordas suaves, sombras discretas e ícones originais em SVG ou caracteres simples.
- Hero em duas colunas no desktop e uma coluna no celular.
- Composição tecnológica abstrata criada em CSS, sem imagens externas.
- Animações leves de entrada e hover, desativadas quando o usuário preferir movimento reduzido.

## Conteúdo por página

### Home

1. Header com links para Início, Serviços, Empresas, Sobre e Contato.
2. Hero com a headline “Seu computador, notebook ou rede parou? A Nandex resolve com rapidez e transparência.”
3. CTA principal “Solicitar orçamento pelo WhatsApp” e secundário “Ver serviços disponíveis”.
4. Selos: atendimento especializado, orçamento antes do reparo, atendimento residencial e empresarial e atuação desde 2008.
5. Seção com seis problemas comuns.
6. Serviços prioritários com link para o catálogo completo.
7. Seção específica para suporte empresarial.
8. Processo de atendimento em seis etapas.
9. Diferenciais e espaço explicitamente reservado para depoimentos reais após validação.
10. Faixa comercial intermediária.
11. Localização, contatos e horários.
12. CTA final para WhatsApp.

### Serviços

O catálogo terá dez serviços:

- Manutenção de computadores.
- Manutenção de notebooks.
- Formatação e instalação de sistemas.
- Remoção de vírus e malware.
- Upgrade de memória e SSD.
- Instalação de programas.
- Redes, Wi-Fi e cabeamento.
- Suporte técnico para empresas.
- Venda de peças e equipamentos.
- Manutenção preventiva.

Cada item terá ícone, título, descrição curta e o micro-CTA “Consultar este serviço”, que abrirá uma mensagem contextual no WhatsApp.

### Contato

- Endereço: Av. Siqueira Campos, 959 A / Posto Delta Sala 2, Paraguaçu Paulista - SP.
- Assistência Técnica e WhatsApp: `(18) 99793-0933`.
- Lan House: `(18) 3361-5830`.
- E-mail: `nandex@nandex.com.br`.
- Horário: segunda a sexta, 08:30–18:00; sábado, 09:00–13:00.
- Formulário com nome, telefone, serviço e mensagem.
- Área de mapa mantida como placeholder até validação do link oficial.

## Conversão e comportamento

- O canal principal será `https://wa.me/5518997930933`.
- O botão do header, o botão flutuante, os CTAs e o formulário usarão o WhatsApp da Assistência Técnica.
- O telefone da Lan House usará `tel:+551833615830`.
- O formulário exigirá nome e gerará uma mensagem contextual codificada na URL.
- No celular, o menu será acessível por botão com estado expandido e será fechado após a escolha de um link.
- Âncoras internas respeitarão o header fixo.

## Copywriting

- Linguagem simples, comercial e objetiva.
- Frases curtas, sem jargão excessivo.
- Ênfase em transparência, diagnóstico, orçamento prévio e agilidade.
- CTAs sempre descritivos; não serão usados “Clique aqui”, “Saiba mais” ou “Enviar”.
- Serão divulgados “Desde 2008” e “mais de 18 anos de atuação”, informações confirmadas pelo cliente.

## SEO e acessibilidade

- `title` e `description` próprios em cada página.
- Um `h1` por página e hierarquia semântica coerente.
- Links com rótulos claros, foco visível e contraste adequado.
- Elementos decorativos ignorados por leitores de tela.
- Texto alternativo no logo.
- Suporte a navegação por teclado e `prefers-reduced-motion`.

## Desempenho e manutenção

- HTML, CSS e JavaScript puros, sem bibliotecas pesadas.
- Componentes visuais organizados por classes reutilizáveis.
- Sem imagens externas ou recursos sem licença.
- Estrutura compatível com hospedagem estática e futura migração para React, Next.js ou WordPress.

## Verificação

- Confirmar carregamento HTTP das três páginas e de todos os recursos locais.
- Validar todos os links de navegação e contato.
- Verificar destino e texto dos CTAs de WhatsApp.
- Testar formulário com campos válidos e inválidos.
- Verificar menu mobile, layouts em desktop e celular e ausência de rolagem horizontal.
- Verificar foco por teclado, rótulos acessíveis e preferência de movimento reduzido.

## Critérios de aceite

- As três páginas apresentam visual e navegação consistentes.
- O usuário encontra um CTA de WhatsApp na primeira dobra e durante a navegação.
- Assistência Técnica e Lan House aparecem com rótulos e números corretos.
- Serviços residenciais e empresariais são compreendidos sem conhecimento técnico.
- O site funciona integralmente sem etapa de build.
- Conteúdos não confirmados são apresentados como placeholders, nunca como fatos.
