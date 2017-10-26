class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def project_types
    ProjectType.all
  end
  helper_method :project_types
end
