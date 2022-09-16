class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true

	# before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # Replace the keys to fit your needs
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirmation, :current_password])
  end

  def after_sign_in_path_for(user)
    users_show_path(user.id)
  end



end
  