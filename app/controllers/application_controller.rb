class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

before_action :configure_permitted_parameters, if: :devise_controller?

def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_in, keys: [:user_id, :email])
  devise_parameter_sanitizer.permit(:sign_up, keys: [:user_id, :first_name, :last_name, :email, :password, :password_confirmation]) 
  devise_parameter_sanitizer.permit(:account_update, keys: [:user_id, :first_name, :last_name, :email, :password, :password_confirmation, :current_password])
end

end
