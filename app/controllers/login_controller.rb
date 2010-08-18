class LoginController < ApplicationController
  def new
  end

  def create
    if params[:login] == Settings.blog_login && params[:password] == Settings.blog_password
      session[:logged_in] = true
      redirect_to root_url
    else
      @login_error = "Invalid login"
      render :new
    end
  end
end
