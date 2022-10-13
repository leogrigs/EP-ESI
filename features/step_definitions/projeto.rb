Given('que estou na página de listagem de projetos') 
    visit '/post'
  end
  
  When('clico em "New Post"') 
    click('New Post')
  end
  
  When('preencho o nome do projeto como "Nome Projeto"')
    fill_in('Title', :with => 'Nome Projeto')
  end
  
  When('preencho a descrição como "Descrição Projeto"') 
    fill_in('Description', :with => 'Descrição Projeto')
  end
  
  When('clico no botão "Create Post"') 
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then('deverei ver a mensagem de sucesso "Post was successfully created." com o nome do titulo e descrição')
    #
  end
  
  When('clico em "Show this post" no projeto desejado')
    click("Show this post")
  end
  
  When('clico no botão escrito "Destroy this post"') 
    click("Destroy this post")
  end
  
  Then('deverei ver a mensagem de sucesso "Post was successfully destroyed." e a listagem dos projetos restantes') 
    
  end
  
  When('altero o nome do projeto para "Novo nome do projeto"') 
    fill_in('Title', :with => 'Novo nome do projeto')
  end
  
  Then('deverei ver a mensagem de sucesso "Post was successfully updated." com as informações do projeto atualizadas') 
   
  end