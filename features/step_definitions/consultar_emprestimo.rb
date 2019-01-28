Dado("que o cliente tem um empréstimo criado") do
    puts 'teste5'
  end
  
  Dado("possui um token valido para se comunicar com o serviço") do
    steps %Q{
        E possui um token válido para se comunicar com o serviço
    }
  end
  
  Quando("o cliente consultar o serviço de empréstimo informando o ID do empréstimo") do
    puts 'teste7'
  end
  
  Então("o serviço deve me retornar as informações do empréstimo criado") do
    puts 'teste8'
  end