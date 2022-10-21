
Dado('que estou na página de registro de usuario') do
    visit '/usuarios' # Write code here that turns the phrase above into concrete actions
  end
  
  Quando('preencho o campo {string} com {string}') do |string, string2|
    fill_in(string, with: string2 ) 
  end

  Quando('preencho o campo senha {string} com uma {string}') do |string, string2|
    fill_in(string, with: string2, id: 'usuario_senha')
  end

  Quando('preencho o campo confirmacao de senha {string} com {string}') do |string, string2|
    find_field(string).set(string2) 
  end

  Quando('clico em registrar') do
    click_on 'Sign up' # Write code here that turns the phrase above into concrete actions
  end
  
  Então('ele deve ter sido salvo no banco de dados') do
    usuario = CadastroUsuario.order("id").last
    expect(usuario.nome).to eq('Leandro')
    expect(usuario.email).to eq('leandrojlhawrysz@usp.br')  # Write code here that turns the phrase above into concrete actions
  end
  
  Dado('clico em Sign in') do
    click_button('Sign in') # Write code here that turns the phrase above into concrete actions
  end
  
  Então('deverei ir para a página login') do
    visit '/login' # Write code here that turns the phrase above into concrete actions
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
  