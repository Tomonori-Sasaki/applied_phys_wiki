class HomeController < ApplicationController
  before_action :forbid_login_user, {only: [:top, :login_form]}

  def top
  end

  def login_form
  end

  def login
    if params[:user][:name] == "yamashin@waseda.jp" && params[:user][:password] == "gakuindakara"
      session[:user_id] = 1
      flash[:notice] = "ログインしました"
      redirect_to(histories_path)
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @name = params[:user][:name]
      @password = params[:user][:password]
      render(home_login_form_path)
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to("/")
  end
end
