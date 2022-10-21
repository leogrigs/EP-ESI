#language:pt

Funcionalidade: Login
Como usuario
Para que eu possa logar na aplicação
Eu quero digitar o meu login e acessar a minha conta

Cenário: Login de usuário com sucesso
    Dado que estou na página de login
    Quando preencho o campo "Email" com um "teste@teste.com"
    Quando preencho o campo "Senha" com uma "123"
    E clico em Log in
    Então devo ir para a pagina do usuario

Cenário: vou para a página de registro
    Dado que estou na página de login
    E clico em Sign up now!
    Então devo ir para a página de registro de usuário
    
Cenário: Login de usuário com erro - sem username
    Dado que estou na página de login
    Quando preencho o campo "Email" com um " "
    Quando preencho o campo "Senha" com uma "abcd"
    E clico em Log in
    Então devo retornar a pagina de login

Cenário: Login de usuário com erro - sem password
    Dado que estou na página de login
    Quando preencho o campo "Email" com um "teste@teste.com"
    Quando preencho o campo "Senha" com uma " "
    E clico em Log in
    Então devo retornar a pagina de login