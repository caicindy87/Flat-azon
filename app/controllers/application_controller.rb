class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

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

  def not_authorized(obj, id, message)
    unless current_user.id == id
      flash[:error] = message
      redirect_to obj
    end
  end

end
