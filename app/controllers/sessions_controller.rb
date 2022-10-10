class SessionsController < ApplicationController

    def create
        @user = User.find_by(username: params[:username])

        ##authenticate user credentials
        if !!@user && @user.authenticate(params[:password])

            #set session and redirect on sucess
            session[:user_id] = @user.id
            redirect_to user_path

        else

            #error message on fail
            message: "Algo deu errado! Certifique-se de que seu usuario e senha estão corretos"
            redirect_to login_path, notice: message
        end
    end

end