class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  #pulls project types from db to use in the navbar
  def project_types
    ProjectType.all
  end
  helper_method :project_types


  # if session controller has an open session and there is a user id 
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  #simple authorization of a session and a current user
  def authorize
    redirect_to '/login' unless current_user
  end
end
