class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :set_user_language
  

  def user_authenticated?
    if !session[:user_id]
      redirect_to(:controller => :auth, :action => :login)
      return false
    end
  end
  
  
  def set_user_language
    #I18n.locale = current_user.language if logged_in?
    I18n.locale = "en"
  end

end
