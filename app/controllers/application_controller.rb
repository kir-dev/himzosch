class ApplicationController < ActionController::Base
  include ApplicationHelper
  before_action :configure_permitted_parameters, if: :devise_controller?

  def require_login
    unless logged_in?
      session[:redirect_url] = request.original_fullpath
      redirect_to root_url
    end
  end

  def require_admin
    redirect_to root_url unless logged_in? && current_user.admin?
  end

  def forbidden_page
    render 'application/403', status: :forbidden
  end

  def logged_in?
    session["warden.user.user.key"].present?
  end
  helper_method :logged_in?

  def current_user
    User.find(session["warden.user.user.key"][0][0]) if logged_in?
  end
  helper_method :current_user

  def admin?
    current_user&.admin?
  end
  helper_method :admin?

  def can_update_user?(user)
    current_user&.admin? || user.id == current_user&.id
  end
  helper_method :can_update_user?

  protected
   
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
