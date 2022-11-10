require 'rails_helper'
require 'spec_helper'
RSpec.describe CadastroUsuario, type: :model do

  it 'invalido sem nome' do
    usuario = CadastroUsuario.new
    usuario.email = "teste@gmail.com"
    expect(usuario).not_to be_valid
  end

  it 'invalido sem email' do
    usuario = CadastroUsuario.new
    usuario.email = ""
    expect(usuario).not_to be_valid
  end

  it 'invalido sem senha' do
    usuario = CadastroUsuario.new
    usuario.senha =""
    expect(usuario).not_to be_valid
  end
  

  it 'invalido sem confirmacao de senha' do
    usuario = CadastroUsuario.new
    usuario.email = "teste@gmail.com"
    expect(usuario).not_to be_valid
  end

  it 'invalido senhas diferentes' do
    usuario = CadastroUsuario.new
    usuario.nome = "leandro"
    usuario.email = "teste@gmail.com"
    usuario.senha = "123"
    usuario.senha_confirmation = "1234"
    expect(usuario).not_to be_valid
  end

  context 'email is already taken' do
    before do
    usuario = CadastroUsuario.new
    usuario.nome = "leandro"
    usuario.email = "teste@teste.com"
    usuario.senha = "senha"
    usuario.senha_confirmation = "senha"
    usuario.save
    end
    it 'invalido email ja cadastrado' do
      usuario = CadastroUsuario.new
      usuario.nome = "leandro"
      usuario.email = "teste@teste.com"
      usuario.senha = "senha"
      usuario.senha_confirmation = "senha"
      usuario.save

      usuario2 = CadastroUsuario.new
      usuario2.nome = "leandro"
      usuario2.email = "teste@teste.com"
      usuario2.senha = "senha"
      usuario2.senha_confirmation = "senha"
      usuario2.save
      expect(usuario).to_not be_valid
      
    end
  end

  it 'testing def new ' do
      visit('/usuarios/new')
      expect(page).to have_content('Nome')   
  end

  it 'tests for show func' do
    @user = CadastroUsuario.create(:nome => "leandro" , :email => "leandro@teste.com", :senha =>"123", :senha_confirmation => "123")
    visit('/usuarios/' + @user.id.to_s)
    expect(page).to have_content('leandro@teste.com')   
  
  end

end
