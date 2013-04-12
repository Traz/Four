class SessionsController < ApplicationController

  before_action :set_user, only: [:create]
  before_action :require_login, only: [:destroy]

  def new
  end

  def create  
    if @user  
      redirect_back_or_to root_url , :notice => "Logged in!"  
    else  
      redirect_to root_url, :alert => "Email or password was invalid." 
    end  
  end 
  def destroy
    logout
    redirect_to root_url, :notice => 'Logged out!'
  end

  private
    def set_user
      @user = login(params[:sessions][:email], params[:sessions][:password])
    end

    def session_params
      params.require(:sessions).permit(:ema3il, :password)
      #include ActiveModel::ForbiddenAttributesProtection à inclure dans le modele
    end

end
