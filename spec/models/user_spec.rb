require 'rails_helper'

RSpec.describe User, type: :model do
    it 'invalido sem usuario' do
        usuario = User.new
        usuario.password_digest = "qualquercoisa"
        expect(usuario).not_to be_valid
      end

      it 'invalido sem senha' do
        usuario = User.new
        usuario.username = "caroll"
        expect(usuario).not_to be_valid
      end
end
