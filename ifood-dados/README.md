# Delícias da Gabi — dados do iFood

Extraído de: https://www.ifood.com.br/delivery/itapetininga-sp/delicias-da-gabi-doceria-centro/a6213882-6343-450f-905a-93bae3a1b64d
Data da extração: 21/08/2026 — 29 produtos, 10 categorias.

## Arquivos

- `ifood-catalogo.json` — lista de produtos. Campos por produto:
  - `nome`, `categoria`, `descricao`, `preco`, `foto_arquivo` (os pedidos)
  - `preco_original` — preço riscado, quando o item está em promoção (`null` se não houver)
  - `serve` — "Serve 1 pessoa" etc., quando o iFood informa
  - `destaque` — `true` se o item aparece nos carrosséis "Destaques" / "Mais Vendidos"
  - `foto_url` — URL original da foto no CDN do iFood (900x675 na maioria)
- `baixar-fotos.sh` — baixa todas as fotos para `fotos/` com o nome exato do campo `foto_arquivo`.
- `fotos/` — destino das imagens.

## Como baixar as fotos

    cd /Users/jeferson/Desktop/Sites/ifood-dados
    bash baixar-fotos.sh

Todos os 29 produtos têm foto — não há nenhum com `foto_arquivo: null`.

## Observações

- As descrições foram limpas: o iFood tinha listas enormes de palavras-chave de SEO
  ("--- tags --- oferta, cupom, frete grátis...") no fim de quase todo texto. Isso foi
  removido; ficou só a descrição de verdade do produto.
- 4 produtos (Coxinha de Morango Ninho c/ Chocolate, Brigadeiros Gourmets,
  Brownie Chocolatudo e Pão de Mel) só aparecem no carrossel "Os Mais Vendidos" —
  não têm seção própria no cardápio. Ficaram com essa categoria; vale reclassificar
  no site (ex.: Doces / Docinhos).
- Sem descrição no iFood: Coxinha de Morango Ninho c/ Chocolate, Trouxinha de Queijo
  e as 3 bebidas.
- As fotos das Coca-Colas vêm do catálogo genérico do iFood e são pequenas
  (172x256 e 122x200). As demais são 900x675.
- A loja estava fechada no momento da extração; preços e itens são os do cardápio publicado.
