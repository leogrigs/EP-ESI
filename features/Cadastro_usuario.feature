#language: pt

Funcionalidade: Cadastrar usuário
Como um usuario, quero registrar meus dados, para criar minha conta

Critérios de Aceite:

-Deve conter uma rota para cadastro
-Deve conter campos para nome, email, senha e confirmação de senha
-Deve conter um botão de cadastro
-Os campos devem ser do tipo senha
-Testes unitários concluídos
-Funcionando corretamente no Heroku

Cenário: Cadastro de usuário com sucesso
Dado que estou na página de registro de usuario
Quando preencho o campo "Nome" com "Leandro"
Quando preencho o campo "Email" com "leandrojlhawrysz@usp.br"
Quando preencho o campo "Senha" com "senha"
Quando preencho o campo "Senha confirmation" com "senha"
E clico em registrar
Então ele deve ter sido salvo no banco de dados

Cenario: Redirecionar para a pagina de login
Dado que estou na página de registro de usuario
E clico em Sign in 
Então deverei ir para a página login

Cenario: Cadastro de aluno com erro - sem nome
Dado que estou na página de registro de usuario
E deixo o campo "Nome" vazio
E clico em registrar
Então deverei ver a mensagem de erro "É obrigatório informar o nome!"

Cenario: Cadastro de aluno com erro - sem e-mail
Dado que estou na página de registro de usuario
E deixo o campo "Email" vazio
E clico em registrar
Então deverei ver a mensagem de erro "É obrigatório informar o e-mail!"

Cenario: Cadastro de aluno com erro - sem senha
Dado que estou na página de registro de usuario
Quando preencho o campo senha "Senha" com uma " "
E clico em registrar
Então deverei ver a mensagem de erro "É obrigatório informar a senha!"

Cenario: Cadastro de aluno com erro - senhas diferentes
Dado que estou na página de registro de usuario
Quando preencho o campo "Nome" com "Leandro"
Quando preencho o campo "Email" com "leandrojlhawrysz@usp.br"
Quando preencho o campo senha "Senha" com uma "senha" 
Quando preencho o campo confirmacao de senha "Senha confirmation" com "adadaa"  
E clico em registrar
Então deverei ver a mensagem de erro "As senhas diferem!"

Cenario: Cadastro de aluno com erro - email ja existente
Dado que estou na página de registro de usuario
Quando preencho o campo "Email" com "leandrojlhawrysz@usp.br" com o dado ja existente na base de dados
E clico em registrar
Então deverei ver a mensagem de erro "E-mail já cadastrado!"

