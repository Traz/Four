class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :require_login, :except => [:not_authenticated]

  protected

  def not_authenticated
    redirect_to root_url, :alert => "Login requis." 
  end


end
