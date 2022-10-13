#language:pt

Funcionalidade: Login
Como usuario
Para que eu possa logar na aplicação
Eu quero digitar o meu login e acessar a minha conta

Cenário: Login de usuário com sucesso
    Dado que estou na página de login
    Quando preencho o campo "Username" com um "carollfreitas"
    Quando preencho o campo "Password" com uma "abcd"
    E clico em log in

Cenário: Login de usuário com erro - sem username
    Dado que estou na página de login
    Quando preencho o campo "Username" com um " "
    Quando preencho o campo "Password" com uma "abcd"
    E clico em log in
    Então devo retornar a pagina de login

Cenário: Login de usuário com erro - sem password
    Dado que estou na página de login
    Quando preencho o campo "Username" com um "carollfreitas"
    Quando preencho o campo "Password" com uma " "
    E clico em log in
    Então devo retornar a pagina de login