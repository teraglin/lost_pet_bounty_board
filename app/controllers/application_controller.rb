class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?    

    protected

    def configure_permitted_parameters
        # devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
        devise_parameter_sanitizer.permit(:sign_up) do |user_params|
            user_params.permit( :email, :username, :password, :password_confirmation)
        end

        devise_parameter_sanitizer.permit(:sign_in) do |user_params|
            user_params.permit(:username, :email)
        end

        # copy/pasted in need of review:

        # devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me) }
        # devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :username, :email, :password, :remember_me) }
        # devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password) }
        
    end
end
