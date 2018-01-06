class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate_user
    if session[:user_id] == nil
      flash[:notice] = "ログインが必要です"
      redirect_to('/')
    end
  end

  def forbid_login_user
    if session[:user_id] == 1
      flash[:notice] = "すでにログインしています"
      redirect_to(histories_path)
    end
  end
end
