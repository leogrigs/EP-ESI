class SessionsController < ApplicationController

    def login
        @user = User.all
    end
    def new
        @session = Sessions.new
    end
    def erro
        @session = Sessions.new
    end
    def create
        @user = User.find_by(username: params[:username])

        ##authenticate user credentials
        if !!@user && @user.authenticate(params[:password])

            #set session and redirect on sucess
            session[:user_id] = @user.id
            redirect_to controller: 'users', action: 'show', id: @user.id


        else

            #error message on fails
            @user = User.new
            render :erro
        end
    end

end