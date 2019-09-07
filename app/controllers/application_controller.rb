class ApplicationController < ActionController::Base
  before_action :set_user

  before_action { @contexts = Context.all }
  def set_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def authorize
    redirect_to login_path unless @current_user
  end
end
