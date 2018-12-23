class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def current_user
    Teacher.find(session[:teacher_id]) if session[:user_id]

  end

  def require_login
    unless session[:user_id]
      flash[:errors] = ["You must login first"]
      redirect_to root_path
    end
  end
end
