class User < ApplicationRecord
    validates :username, presence: { message: "É obrigatório informar o nome!" }
    has_secure_password
end
