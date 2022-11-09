class SessionsController < ApplicationController
    before_action :block_access, except: [:destroy]
    
    def create
        @user = CadastroUsuario.find_by(email: params[:sessions][:email].downcase)
        if @user && @user.senha == params[:sessions][:senha]
                    sign_in()
        redirect_to '/usuarios/' + @user.id.to_s
        else 
          render :erro_login , status: :unprocessable_entity, content_type: "text/html"
          headers["Content-Type"] = "text/html"
        end
    end

end