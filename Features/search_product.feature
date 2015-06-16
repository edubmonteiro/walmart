# language: pt

@Cenario1
Realizar uma busca pelo termo TV
Dado acesso ao site http://www.walmart.com.br
E visualizo no topo do site o box de busca
E clicar no textbox
E inserir o termo "tv" na busca
E clicar no icone procurar
Entao ele devera retornar com o termo buscado

@Cenario2
Validar os conteudos retornados apos buscar pelo termo TV
Dado acesso a pagina cujo termo buscado foi TV
E a URL retornar o parametro: http://www.walmart.com.br/busca/?ft=tv&PS=20
Entao ira retornar o titulo dos equipamentos com a quantidade de produtos, imagem e valores cadastrados

@Cenario3
Clicar em um dos resultados e validar que a pagina do produto abriu corretamente
Dado que o resultado da busca retornou os produtos com o termo desejado
E eu clicar no primeiro item do equipamento de TV
E ele formar os parametros na URL http://www.walmart.com.br/produto/Eletronicos/TV-LED/Philco/501024-tv-led-32-philco-ph32sdgb-com-2-entradas-usb-e-3-entradas-hdmi
E eu visualizar a imagem do produto
E eu visualizar descricao do produto
E eu visualizar a DIV do carrinho 
E visualizar descricao do preco antigo sublinhado
E visualizar descricao do preco atual em destaque verde
E visualizar descricao da forma de pagamento
E visualizar a opcao de quantidade de itens a serem inseridos no carrinho representado pelos caracteres menos "-" e mais "+"
E clicar com o mouse sobre o produto
E visualizar o zoom da imagem

@Cenario4
Adicionar o Produto ao carrinho
E ao selecionar o produto o botao do carrinho sera visualizado
E ao clicar no botao carrinho
E exibir o load de carregamento do produto
Entao sera visualizado o modal com opcoes de precos, condicoes de pagamento e informacoes adicionais 

@Cenario5
Validar isercao de sucesso do Produto no carrinho
Dado a selecao do produto de minha escolha
E ao visualizar a DIV carrinho
E eu pressionar o botao "adicionar ao carrinho"
E exibir o modal com as informacoes da compra
E clicar em continuar
E visualizar no header lateral direito o carrinho com a quantidade de itens no carrinho
E clicar no carrinho
Entao ira exibir os itens selecionados informando quantidade, precos, subtotal, consultar CEP e o botao finalizar compra
