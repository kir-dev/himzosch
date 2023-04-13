class ApplicationController < ActionController::Base
  include ApplicationHelper
  include Pundit::Authorization
  before_action :configure_permitted_parameters, if: :devise_controller?

  def require_admin
    redirect_back fallback_location: root_url,  alert: 'Ehhez a művelethez nincs jogosultságod' unless user_signed_in? && current_user.admin?
  end

  def require_login
    redirect_back fallback_location: root_url,  alert: 'Ehhez a művelethez be kell jelentkezned' unless user_signed_in?
  end

  def forbidden_page
    render 'application/403', status: :forbidden
  end

  def admin?
    current_user&.admin?
  end

  helper_method :admin?

  def can_update_user?(user)
    current_user&.admin? || user.id == current_user&.id
  end

  helper_method :can_update_user?

  rescue_from Pundit::NotAuthorizedError do |exception|
    redirect_back fallback_location: root_url,  alert: 'Ehhez a művelethez nincs jogosultságod'
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
