Dado('Que eu esteja com a URL valida') do
    consulta_valida = HTTParty.get('https://viacep.com.br/ws/08143400/json/')
    puts consulta_valida
    puts "response code : #{consulta_valida.code}"
end
  
Quando('Enviar uma requisição com CEP válido') do

end
 
Então('valido o response com as informações do CEP') do

end
  
  
Dado('Que eu esteja com a URL invalida') do
    consulta_invalida = HTTParty.get('https://viacep.com.br/ws/08143401/json/')
    puts consulta_invalida
    puts "response code : #{consulta_invalida.code}"
end
  
Quando('Enviar uma requisição com CEP inválido') do
  
end
  
Então('valido o response com a mensagem de erro') do
  
end
  