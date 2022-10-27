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
      visit('/usuarios')
      fill_in('Nome', with: 'leandro')
      fill_in('Email', with: 'teste@teste.com')
      fill_in('Senha', with: '123')
      fill_in('Senha confirmation', with: '123')
      click_button('Sign up')
      expect(usuario).to_not be_valid
      expect(page).to have_content('Email já cadastrado!')
    end
  end

end
