class SessionsController < ApplicationController
    def new
    end

    def create
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            flash[:success] = 'You loged in'
            redirect_to @user
        else
            flasf[:error] = 'Invalid credentials'
            redirect_to root_path
        end
    end


    def destroy
        session[:user_id] = nil
        flash[:success] = 'You logged out'
        redirect_to login_path
    end
end