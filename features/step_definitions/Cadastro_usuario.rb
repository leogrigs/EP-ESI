
Dado('que estou na página de registro de usuario') do
    visit '/usuarios' # Write code here that turns the phrase above into concrete actions
  end
  
  Quando('preencho o campo {string} com {string}') do |string, string2|
    fill_in string, :with => string2  
  end
  
  
  Quando('clico em registrar') do
    click_on 'Registrar' # Write code here that turns the phrase above into concrete actions
  end
  
  Então('ele deve ter sido salvo no banco de dados') do
    usuario = CadastroUsuario.order("id").last
    expect(usuario.nome).to eq('Leandro')
    expect(usuario.email).to eq('leandrojlhawrysz@usp.br')  # Write code here that turns the phrase above into concrete actions
  end
  
  
  Dado('deixo o campo {string} vazio') do |string|
    fill_in string, :with => ""
  end
  
  Então('deverei ver a mensagem de erro {string}') do |string|
    expect(page).to have_content(string)
  end
  
  Quando('preencho o campo {string} com algo diferente de {string}') do |string, string2|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando('preencho o campo {string} com {string} com o dado ja existente na base de dados') do |string, string2|
    pending # Write code here that turns the phrase above into concrete actions
  end
  