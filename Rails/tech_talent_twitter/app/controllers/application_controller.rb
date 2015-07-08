class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  
  before_action :authenticate_user!
  before_action :do_common_stuff
  def do_common_stuff
    vowel = ['a','e','i','o','u'].sample
    @tweet_werd = 'Tw' + vowel + 'rt'
    @tweet_brand = 'Tw' + vowel + 'rter'
  end

  def configure_permitted_parameters

    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, 
      :name, :username, :bio, :location, :following) }

    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :password_confirmation, 
      :current_password, :name, :username, :bio, :location, :following) }
      
  end
  
end