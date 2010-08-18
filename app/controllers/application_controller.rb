class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :admin?
  def admin?
    session[:admin]
  end

  def admin_required
    if session[:admin]
      return true
    else
      flash[:notice] = "Please log in to edit this blog"
      redirect_to login_url
    end
  end
end
