class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def index
  end
  def after_sign_in_path_for(resource)
    if resource.class == AdminUser
      admin_dashboard_path
    elsif resource.class  == User
      root_path
    end
  end
end
