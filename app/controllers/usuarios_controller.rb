class UsuariosController < ApplicationController
    def new
        @usuarios = CadastroUsuario.new
    end

    def index
       @usuarios = CadastroUsuario.all
    end
    
    def show
        @usuarios = CadastroUsuario.find(params[:id])
    end
    
    def create
        @usuarios = CadastroUsuario.new(cadastro_usuario_params) 
        if @usuarios.save
          redirect_to usuarios_path
        else
          render :new, status: :unprocessable_entity, content_type: "text/html"
          headers["Content-Type"] = "text/html"
        end
      end
    
  



      private
      def cadastro_usuario_params
        params.require(:usuario).permit(:nome, :email, :senha,:senha_confirmation)
      end
end
