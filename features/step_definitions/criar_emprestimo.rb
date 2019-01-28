Dado("que o cliente possui todos os dados necessários para criação do empréstimo") do
    

    
     @username = Faker::Name.name  #gera um username aleatorio
     @id = '5555'
     @cpf = '08971895667'
     @vl_emprestimo = '1000',
     @nr_parcelas ='10',
     @vl_parcelas = '100'

     puts '############ Dados do Emprestimo ###########'
     puts @username
     puts @cpf
     puts @vl_emprestimo
     puts @nr_parcelas
     puts @vl_parcelas
   
  end
  
  Dado("possui um token válido para se comunicar com o serviço") do

   
    @body_token = {
            username: @username,
            password: '102030'
    }.to_json


    @headers_token = {
        'Content-Type': 'application/json'
    }

     
    @request_token = HTTParty.get('http://5c3d132329429300143fe5a3.mockapi.io/api/v1/token', body: @body_token, headers: @headers_token)
    ####### www.urlficticia.com.br/api/v1/token ######
  
    puts '################ Token Gerado:  ' +  @request_token + '  ##################'



  end
  
  Quando("envio todos os dados para o serviço de criação de empréstimo") do
    
    puts 'teste3'

    @body_emprestimo = {
        id: @id,
		nome: @username,
		cpf: @cpf,
		vl_emprestimo: @vl_emprestimo,
		nr_parcelas: @nr_parcelas,
		vl_parcelas: @vl_parcelas
    }.to_json


    @headers_emprestimo = {
        'Content-Type': 'application/json'
    }

    @request_emprestimo = HTTParty.post('http://5c3d132329429300143fe5a3.mockapi.io/api/v1/emprestimos', body: @body_emprestimo, headers: @headers_emprestimo)
    ####### www.urlficticia.com.br/api/v1/token ######
    puts @body_emprestimo
    puts @headers_emprestimo
    puts @request_emprestimo

  end
  
  Então("o serviço deve criar o empréstimo com sucesso") do
 
    puts 'Empréstimo Criado com Sucesso'

  end
  
 