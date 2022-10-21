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


end
