#language: pt

Funcionalidade: Disponibilizar endpoint para consulta e criação de empréstimo
    Como interface
    Gostaria de consultar e criar empréstimos via endpoint
    Para que possa fazer a interface para o usuário

@post_emprestimo
Cenário: Criar empréstimo
    Dado que o cliente possui todos os dados necessários para criação do empréstimo
	E possui um token válido para se comunicar com o serviço
    Quando envio todos os dados para o serviço de criação de empréstimo
	Então o serviço deve criar o empréstimo com sucesso

@get_emprestimo
Cenário: Consultar empréstimo
   Dado que o cliente tem um empréstimo criado
   E possui um token valido para se comunicar com o serviço
   Quando o cliente consultar o serviço de empréstimo informando o ID do empréstimo
   Então o serviço deve me retornar as informações do empréstimo criado