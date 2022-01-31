#language: pt

Funcionalidade: Realizar consulta na API via CEP
    Sendo um usuário
    Posso enviar requisições 
    Para realizar uma consulta através da API via CEP

Cenario:Realizar consulta com CEP válido
    Dado Que eu esteja com a URL valida
    Quando Enviar uma requisição com CEP válido
    Então valido o response com as informações do CEP
        
Cenario:Realizar consulta com CEP inválido
    Dado Que eu esteja com a URL invalida
    Quando Enviar uma requisição com CEP inválido
    Então valido o response com a mensagem de erro