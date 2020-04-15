class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update]
  before_action :authorized, except: [:new, :create]
  before_action :check_user, only: [:edit, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      session[:user_id] = @user.id
      flash.now[:success] = "User created successfully"
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
    @user.update(user_params)
    if @user.valid?
      @user.save
      redirect_to @user
    else
      render :edit
    end
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :email, :address, :profile_pic, :password, :password_confirmation)
  end

  # def same_user
  #   not_authorized(@user, 'Not authorized to edit this account')
  # end

  def check_user
    @user_id = User.find(params[:id]).id
    if !(@user_id == current_user.id)
      flash[:error] = "Not authorized to edit this account"
      redirect_to user_path(params[:id])
    end
  end
end
