Dado('que estou na página de login') do
  visit "/login"
end

Quando('preencho o campo {string} com um {string}') do |string, string2|
    fill_in string, :with => string2
end

Quando('preencho o campo {string} com uma {string}') do |string, string2|
    fill_in string, :with => string2
end

Quando('clico em Log in') do
  usuario = CadastroUsuario.new
  usuario.nome = "leandro"
  usuario.email = "teste@teste.com"
  usuario.senha = "123"
  usuario.senha_confirmation = "123"
  usuario.save
  click_button('Log in')
end

Então('devo retornar a pagina de login') do

end

Então('devo ir para a pagina do usuario') do
  visit 'usuarios/1'# Write code here that turns the phrase above into concrete actions
end 

Dado('clico em Sign up now!') do
  click_on('Sign up now!')# Write code here that turns the phrase above into concrete actions
end

Então('devo ir para a página de registro de usuário') do
  visit '/usuarios' # Write code here that turns the phrase above into concrete actions
end






