class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception
  before_action :update_allowed_parameters, if: :devise_controller?

  private

  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(_resource_or_scope)
    user_session_path
  end

  protected

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password) }
  end
end
