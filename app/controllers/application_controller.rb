class ApplicationController < ActionController::Base
  
  include ApplicationHelper
  before_action :login_required
  
  
  private 
  
  def login_required 
    redirect_to login_path unless current_user
  end 
  
  # hepler_method :current_user
  
  # private 
  
  # def current_user 
  #   @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  # end
end
