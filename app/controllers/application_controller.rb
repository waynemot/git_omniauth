class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, except: 'authenticate_user'

  def authenticate_user
    Rails.logger.info("app_ctrlr.authenticate_user fired!")
    true
  end
  #
  # def after_sign_in_path_for (resource_or_scope)
  #   Rails.logger.info ("DEBUG: after_sign_in_path_for traversed  request.env: #{request.env}")
  #   if request.env['omniauth.origin']
  #     redirect_to request.env['omniauth.origin']
  #   else
  #     redirect_to root_url, method: :get
  #   end
  # end
end
