class CadastroUsuario < ApplicationRecord
    validates :nome, presence: { message: "É obrigatório informar o nome!" }
    validates :email, presence: { message: "É obrigatório informar o e-mail!" }
    validates :senha, presence: { message: "É obrigatório informar a senha!" }
end
