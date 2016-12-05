class ApplicationController < ActionController::Base
  before_action :authenticate_organization!, :except => [:show, :index]

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, :keys => [:name, :description, :website, :location, :logo])

    devise_parameter_sanitizer.permit(:account_update, :keys => [:name, :description, :website, :location, :logo])
  end
end
