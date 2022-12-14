module SessionsHelper
    def sign_in
                session[:user_id] = @user.id
    end
    def current_user
                @current_user ||= CadastroUsuario.find_by(id: session[:user_id])
    end
    def block_access
                if current_user.present?
                           redirect_to '/usuarios/' + current_user.id.to_s
                end
    end
end