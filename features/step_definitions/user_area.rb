Dado('que estou na área do usuário') do
    visit '/user_areas'
  end
  
  Então('devo ver o link "Criar novo usuario"') do
    have_content('New user area')
  end
  
  