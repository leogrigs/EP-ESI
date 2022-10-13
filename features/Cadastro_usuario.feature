#language: pt

Funcionalidade: Cadastrar usuário
Como um usuario, quero registrar meus dados, para criar minha conta

Critérios de Aceite:
- Deve conter uma rota para cadastro
- Deve conter campos para nome da pessoa, email, senha e confirmação de senha
- Deve conter um botão de cadastro
- O campo de email deve conter máscara de email
- Os campos devem ser do tipo senha
- O campo nome deve conter máscara de nome
- Testes unitários concluídos
- Funcionando corretamente no Heroku

Cenário: Cadastro de usuário com sucesso
Dado que estou na página de registro de usuario
Quando preencho o campo "Nome" com "Leandro"
Quando preencho o campo "Email" com "leandrojlhawrysz@usp.br"
Quando preencho o campo "Senha" com "senha"
Quando preencho o campo "Senha2" com "senha"
E clico em registrar
Então ele deve ter sido salvo no banco de dados



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
Quando preencho o campo "senha" com " "
E clico em registrar
Então deverei ver a mensagem de erro "É obrigatório informar a senha!"

Cenario: Cadastro de aluno com erro - senhas diferentes
Dado que estou na página de registro de usuario
Quando preencho o campo "senha" com "senha" 
Quando preencho o campo "confimacaoDeSenha" com algo diferente de "senha"  
E clico em registrar
Então deverei ver a mensagem de erro "As senhas diferem!"

Cenario: Cadastro de aluno com erro - email ja existente
Dado que estou na página de registro de usuario
Quando preencho o campo "Email" com "leandrojlhawrysz@usp.br" com o dado ja existente na base de dados
E clico em registrar
Então deverei ver a mensagem de erro "E-mail já cadastrado!"

