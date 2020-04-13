class UsersController < ApplicationController

    before_action :find_user, only: [:show, :edit, :update]

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)

        if @user.valid?
            @user.save
            session[:user_id] = @user.id
            redirect_to @user
        else
            render :new
        end
    end

    def show
    end

    def edit
    end

    def update
    end

    private
    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:username, :first_name, :last_name, :email, :address, :profile_pic, :password, :password_confirmation)
    end
end
