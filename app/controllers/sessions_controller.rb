class SessionsController < ApplicationController

    def login

    end
    def create
        @user = User.find_by(username: params[:username])

        ##authenticate user credentials
        if !!@user && @user.authenticate(params[:password])
        puts @user.id

            #set session and redirect on sucess
            session[:user_id] = @user.id
            redirect_to controller: 'users', action: 'show', id: @user.id


        else

            #error message on fail
            message = "Algo deu errado! Certifique-se de que seu usuario e senha estão corretos"
            redirect_to login_path, notice: message
        end
    end

end