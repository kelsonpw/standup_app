class RegistrationsController < ApplicationController
  before_action :configure_permitted_params

  protected

  def configure_permitted_params
    devise_paramater_sanitizer.permit(:sign_up, keys: [:name])
  end

  def after_sign_up_path_for(resource)
    new_accounts_path
  end
end
