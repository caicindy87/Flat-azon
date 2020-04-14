class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def logged_in?
    !!current_user
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def authorized
    if !logged_in?
      flash[:error] = "You must be logged in to view page"
      redirect_to login_path
    end
  end

  def check_item_user
    @user_id = Item.find(params[:id]).user_id
    if !(@user_id == current_user.id)
      flash[:error] = "Not authorized to edit this item"
      redirect_to item_path(params[:id])
    end
  end

  def check_user
    @user_id = User.find(params[:id]).user_id
    if !(@user_id == current_user.id)
      flash[:error] = "Not authorized to edit this account"
      redirect_to user_path(params[:id])
    end
  end

end
