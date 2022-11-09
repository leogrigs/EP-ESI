require 'rails_helper'
require 'spec_helper'
RSpec.describe 'Sessions', type: :request do

    it 'creates a session' do
        @user = CadastroUsuario.create(:nome => "leandro" , :email => "leandro@teste.com", :senha =>"123", :senha_confirmation => "123")
        post "/sign_in", :params =>  { :sessions => { :email => "leandro@teste.com", :senha =>"123"}}
        expect(response).to redirect_to('/usuarios/' + @user.id.to_s)
    end

    it 'check the current session' do
        @user = CadastroUsuario.create(:nome => "leandro" , :email => "leandro@teste.com", :senha =>"123", :senha_confirmation => "123")
        post "/sign_in", :params =>  { :sessions => { :email => "leandro@teste.com", :senha =>"123"}}
        get '/login'
        expect(page).to redirect_to('/usuarios/' + @user.id.to_s)
    end
end