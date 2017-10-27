class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  #pulls project types from db to use in the navbar
  def project_types
    ProjectType.all
  end
  helper_method :project_types
end
