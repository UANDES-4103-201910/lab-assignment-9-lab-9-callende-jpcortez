class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index

  end

  def current_user
	#complete this method
  end

  def is_user_logged_in?
  	
  end
end
