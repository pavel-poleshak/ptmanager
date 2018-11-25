class ApplicationController < ActionController::Base
  def authorize_admin?
    redirect_to root_path if !current_user.admin?
  end
end
