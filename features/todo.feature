
Feature: Projeto


    Scenario: criação de um projeto
    Given que estou na página de listagem de projetos
    When clico em "New Post"
    When preencho o nome do projeto como "Nome Projeto"
    When preencho a descrição como "Descrição projeto"
    When clico no botão "Create Post"
Then deverei ver a mensagem de sucesso "Post was successfully created." com o nome do titulo e descrição


Scenario: exclusão de um projeto
When clico em "Show this post" no projeto desejado
When clico no botão escrito "Destroy this post"
Then deverei ver a mensagem de sucesso "Post was successfully destroyed." e a listagem dos projetos restantes

Scenario: alteração do nome do projeto
When clico em "Show this post" no projeto desejado
When clico em "Edit this post"
When altero o nome do projeto
When clico no botão "Update post"
Then deverei ver a mensagem de sucesso "Post was successfully updated." com as informações do projeto atualizadas