require 'rails_helper'

RSpec.describe "Usuarios", type: :request do
  it "redirects to usuarios's login page" do
  get "/usuarios" do
      expect(response).to render_template(:index)
    end
  end
  it "redirects to cadastro de usuarios's login page" do
    get "/usuarios" do
        expect(response).to render_template(:new)
      end
    end

  it "login of user is accepted" do 
    post "/usuarios", :params =>  { :usuario => {:nome => "leandro" , :email => "leandro@teste.com", :senha =>"123", :senha_confirmation => "123"}}
      get "/login" do
      post "/sign_in", :params =>  { :sessions => { :email => "teste@teste.com", :senha =>"123"}}

      expect(response).to redirect_to(usuarios_path)
      follow_redirect!
    end

  end
 


  it "login of user is not accepted" do 
    post "/sign_in", :params =>  { :sessions => { :email => "leandro@teste.com", :senha =>""}}

    expect(response).to have_http_status(422)

  end

  it "register of user is accepted" do 
    post "/usuarios", :params =>  { :usuario => {:nome => "leandro" , :email => "leandro@teste.com", :senha =>"123", :senha_confirmation => "123"}}

    expect(response).to redirect_to(usuarios_path)
  end

  it "register of user is not accepted" do 
    post "/usuarios", :params =>  { :usuario => {:nome => "" , :email => "leandro@teste.com", :senha =>"123", :senha_confirmation => "123"}}

    expect(response).to have_http_status(422)
  end
  
end
