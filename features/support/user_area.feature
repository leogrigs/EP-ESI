#language: pt

Funcionalidade: Área do usuário
Como um usuario, quero ver a minha página inicial com meus projetos assim que efetuar o login

Cenário: Nenhum projeto cadastrado
Dado que estou na área do usuário
Então devo ver o link "Criar novo usuario"
Então a página deve indicar que não há projetos
E deverei ver o botão de "Novo Projeto"

Cenário: Há projeto cadastrado
Quando houver um projeto
Então deverei ver todo os projetos disponíveis

Cenário: Acesso ao menu
Quando clico no botão com o nome do usuário
Então um menu aparece
E nele temos o botão de editar e logout

