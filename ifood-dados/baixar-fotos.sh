#!/usr/bin/env bash
# Baixa todas as fotos do cardapio do iFood (resolucao original 900x675)
# Uso:  bash baixar-fotos.sh
set -u
DEST="$(cd "$(dirname "$0")" && pwd)/fotos"
mkdir -p "$DEST"
ok=0; erro=0
baixar() {
  if curl -fsSL --retry 3 --max-time 60 -o "$DEST/$2" "$1"; then
    echo "  ok  $2"; ok=$((ok+1))
  else
    echo "  ERRO $2"; erro=$((erro+1))
  fi
}
echo "Baixando 29 fotos para $DEST"

baixar "https://static.ifood-static.com.br/image/upload/pratos/a6213882-6343-450f-905a-93bae3a1b64d/202506051713_21A6_i.jpg" "coxinha-de-morango-ninho-com-chocolate.jpg"
baixar "https://static.ifood-static.com.br/image/upload/pratos/a6213882-6343-450f-905a-93bae3a1b64d/202506051625_7TIU_i.jpg" "brigadeiros-gourmets.jpg"
baixar "https://static.ifood-static.com.br/image/upload/pratos/a6213882-6343-450f-905a-93bae3a1b64d/202506051618_A727_i.jpg" "brownie-chocolatudo.jpg"
baixar "https://static.ifood-static.com.br/image/upload/pratos/a6213882-6343-450f-905a-93bae3a1b64d/202602101557_6Y4C_i.jpg" "pao-de-mel.jpg"
baixar "https://static.ifood-static.com.br/image/upload/pratos/a6213882-6343-450f-905a-93bae3a1b64d/202607170118_Z69T_.jpeg" "fatia-de-torta-cookie-com-nutella.jpeg"
baixar "https://static.ifood-static.com.br/image/upload/pratos/a6213882-6343-450f-905a-93bae3a1b64d/202408212011_Y3vE_.jpeg" "fatia-de-torta-de-limao-com-creme-de-alpino.jpeg"
baixar "https://static.ifood-static.com.br/image/upload/pratos/a6213882-6343-450f-905a-93bae3a1b64d/202406080936_1X71_i.jpg" "bolo-gelado-recheado-de-creme-com-coco.jpg"
baixar "https://static.ifood-static.com.br/image/upload/pratos/a6213882-6343-450f-905a-93bae3a1b64d/202408211349_RIHY_i.jpg" "bolo-gelado-recheado-de-creme-abacaxi-com-coco.jpg"
baixar "https://static.ifood-static.com.br/image/upload/pratos/a6213882-6343-450f-905a-93bae3a1b64d/202408211654_YfAV_.jpeg" "bolo-gelado-recheado-de-ninho-com-nutella.jpeg"
baixar "https://static.ifood-static.com.br/image/upload/pratos/a6213882-6343-450f-905a-93bae3a1b64d/202506051639_7578_i.jpg" "cookie-recheado-de-brigadeiro.jpg"
baixar "https://static.ifood-static.com.br/image/upload/pratos/a6213882-6343-450f-905a-93bae3a1b64d/202406080926_VJSA_i.jpg" "cookie-recheado-de-nutella.jpg"
baixar "https://static.ifood-static.com.br/image/upload/pratos/a6213882-6343-450f-905a-93bae3a1b64d/202505121601_GP68_.jpeg" "cookie-recheado-de-nutella-com-oreo.jpeg"
baixar "https://static.ifood-static.com.br/image/upload/pratos/a6213882-6343-450f-905a-93bae3a1b64d/202408211603_X060_i.jpg" "quadradinho-de-brownie-ninho-com-nutella-e-kinder-bueno.jpg"
baixar "https://static.ifood-static.com.br/image/upload/pratos/a6213882-6343-450f-905a-93bae3a1b64d/202408211601_B4CP_i.jpg" "quadradinho-de-brownie-nutella-com-morango.jpg"
baixar "https://static.ifood-static.com.br/image/upload/pratos/a6213882-6343-450f-905a-93bae3a1b64d/202409041650_cCOe_.jpeg" "leve-2-quadradinhos-de-brownie-com-descontao.jpeg"
baixar "https://static.ifood-static.com.br/image/upload/pratos/a6213882-6343-450f-905a-93bae3a1b64d/202607170138_566T_.jpeg" "bolo-no-pote-chocolate-com-brigadeiro.jpeg"
baixar "https://static.ifood-static.com.br/image/upload/pratos/a6213882-6343-450f-905a-93bae3a1b64d/202607170136_RU0B_.jpeg" "bolo-de-pote-leite-ninho-e-brigadeiro.jpeg"
baixar "https://static.ifood-static.com.br/image/upload/pratos/a6213882-6343-450f-905a-93bae3a1b64d/202607170149_0837_.jpeg" "bolo-de-pote-brigadeiro-de-ninho-e-morango.jpeg"
baixar "https://static.ifood-static.com.br/image/upload/pratos/a6213882-6343-450f-905a-93bae3a1b64d/202607170136_2OP1_.jpeg" "brownie-no-pote-ninho-com-nutella.jpeg"
baixar "https://static.ifood-static.com.br/image/upload/pratos/a6213882-6343-450f-905a-93bae3a1b64d/202602101539_2E65_i.jpg" "lasanha-de-leite-ninho-e-nutella-com-morangos.jpg"
baixar "https://static.ifood-static.com.br/image/upload/pratos/a6213882-6343-450f-905a-93bae3a1b64d/202602101849_XR2N_i.jpg" "copo-da-felicidade-de-brownie-p.jpg"
baixar "https://static.ifood-static.com.br/image/upload/pratos/a6213882-6343-450f-905a-93bae3a1b64d/202602101848_OQ71_i.jpg" "copo-da-felicidade-de-brownie-m.jpg"
baixar "https://static.ifood-static.com.br/image/upload/pratos/a6213882-6343-450f-905a-93bae3a1b64d/202409121412_NMOB_i.jpg" "1-quadradinho-de-brownie-mais-1-cookie-recheado.jpg"
baixar "https://static.ifood-static.com.br/image/upload/pratos/a6213882-6343-450f-905a-93bae3a1b64d/202409121231_23P0_i.jpg" "leve-4-brigadeiros-com-desconto.jpg"
baixar "https://static.ifood-static.com.br/image/upload/pratos/a6213882-6343-450f-905a-93bae3a1b64d/202607021602_BIAI_.jpeg" "esfiha-de-carne.jpeg"
baixar "https://static.ifood-static.com.br/image/upload/pratos/a6213882-6343-450f-905a-93bae3a1b64d/202607170112_N86Z_.jpeg" "trouxinha-de-queijo.jpeg"
baixar "https://static.ifood-static.com.br/image/upload/pratos/820af392-002c-47b1-bfae-d7ef31743c7f/202504241957_ymv6x8ybss.jpeg" "coca-cola-350ml.jpeg"
baixar "https://static.ifood-static.com.br/image/upload/pratos/820af392-002c-47b1-bfae-d7ef31743c7f/202410091134_4f07pcy90a.jpeg" "coca-cola-zero-lata-350ml.jpeg"
baixar "https://static.ifood-static.com.br/image/upload/pratos/820af392-002c-47b1-bfae-d7ef31743c7f/202404261016_28lm20rwuh2.png" "coca-cola-zero-200ml.png"

echo ""
echo "Concluido: $ok baixadas, $erro com erro."
