class SessionsController < ApplicationController
  def create
    user = Teacher.find_by(email: params[:sessions][:email])
    if user && user.authenticate(params[:sessions][:password])
      session[:user_id] = user.id
      redirect_to administration_path
    else
      flash[:errors] = ["Invalid Combination"]
      redirect_to :login
    end
  end

  def destroy
    reset_session
    redirect_to :root
  end
end
