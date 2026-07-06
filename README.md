# Nandex Informática

Site institucional da Nandex, empresa de assistência técnica e soluções em informática que atende residências e empresas em Paraguaçu Paulista — SP.

## Site publicado

**Acesse:** [site-nandex.vercel.app](https://site-nandex.vercel.app)

## Tecnologia funcionando. Sem complicação.

Desde 2008, a Nandex ajuda clientes a resolver problemas com computadores, notebooks, sistemas, redes e equipamentos. O site foi desenvolvido para apresentar os serviços com clareza e facilitar o contato direto com a equipe técnica.

### Principais soluções

- Manutenção de computadores e notebooks
- Formatação e instalação de sistemas
- Remoção de vírus e malware
- Upgrade de memória e SSD
- Instalação e configuração de programas
- Redes, Wi-Fi e cabeamento
- Suporte técnico para empresas
- Manutenção preventiva
- Venda de peças e equipamentos

## Estrutura do site

O projeto possui cinco páginas independentes:

- **Início:** apresentação da Nandex e acesso rápido às principais soluções
- **Serviços:** catálogo completo de atendimentos técnicos
- **Empresas:** suporte de TI para manter equipes, equipamentos e redes em operação
- **Sobre:** história, valores e processo de atendimento
- **Contato:** endereço, horários, telefones e formulário direcionado ao WhatsApp

## Contato comercial

- **Assistência Técnica e WhatsApp:** [(18) 99793-0933](https://wa.me/5518997930933)
- **Lan House:** [(18) 3361-5830](tel:+551833615830)
- **E-mail:** [nandex@nandex.com.br](mailto:nandex@nandex.com.br)
- **Endereço:** Av. Siqueira Campos, 959 A — Posto Delta, Sala 2 — Paraguaçu Paulista/SP
- **Horários:** segunda a sexta, das 08:30 às 18:00; sábado, das 09:00 às 13:00

## Desenvolvimento

O site utiliza HTML5, CSS3 e JavaScript puro, sem dependências ou etapa de build. A interface é responsiva, acessível e otimizada para carregamento rápido.

    Site_Nandex/
    ├── index.html
    ├── servicos.html
    ├── empresas.html
    ├── sobre.html
    ├── contato.html
    ├── vercel.json
    ├── assets/
    │   ├── css/style.css
    │   ├── js/main.js
    │   └── img/
    └── tests/site-checks.ps1

### Executar localmente

    python -m http.server 8080 --bind 127.0.0.1

Acesse http://127.0.0.1:8080.

### Executar a validação

    powershell -ExecutionPolicy Bypass -File tests/site-checks.ps1

## Publicação

O projeto está configurado para hospedagem estática na Vercel, com URLs limpas definidas em vercel.json.

---

© 2026 Nandex Informática. Todos os direitos reservados.
