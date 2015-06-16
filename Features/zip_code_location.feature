# language: pt

@cenario1
Validar resposta na API dos correios para um cep valido
Dado acesso a api dos correios
E eu insiro manualmente um CEP valido na URL (ex.:01506000)
E a URL com o CEP devera estar como http://cep.correiocontrol.com.br/12110005.json
Entao a resposta da API sera:
{
bairro: "Liberdade",
logradouro: "Rua Galvão Bueno",
cep: "01506000",
uf: "SP",
localidade: "São Paulo"
}

@cenario2
Validar resposta na API dos correios inserindo cep em branco, letras ou cep inexistente
Dado acesso a api dos correios
E eu insiro manualmente um CEP valido na URL (ex.:1211005)
E a URL com o CEP devera estar como http://cep.correiocontrol.com.br/1211005.json
E a URL com o CEP devera estar como http://cep.correiocontrol.com.br/00000000.json
E a URL com o CEP devera estar como http://cep.correiocontrol.com.br/ABCDFGHI.json
Entao o retorno da API sera:
correiocontrolcep(
{
erro: true
}
)

@cenario4
Validar chamada na API para cep com insercao de caracteres
Dado acesso a api dos correios
E eu insiro manualmente um CEP valido na URL (ex.:)!%)¨&¨#)
E a URL com o CEP devera estar como http://cep.correiocontrol.com.br/)!%)%C2%A8&%C2%A8#.json
Entao o retorno da API sera:
400 Bad Request
nginx/1.1.19
