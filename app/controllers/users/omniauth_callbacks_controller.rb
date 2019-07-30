class OmniauthCallbacksController < ApplicationController
  def cas
    Rails.logger.info "DEBUG: OmniAuthCallbacksController.cas() traversed, request.env: #{request.env.inspect}"
    @user = User.from_omniauth(request.env["omniauth.auth"])
    sign_in_and_redirect @user, root_url
  end

  def find_user(auth_type)
    auth_method = "find_for_#{auth_type.downcase}".to_sym
    Rails.logger.info "DEBUG: users/omniauth_callbks_ctrlr.find_user(): auth_type: #{auth_type}"
    @user = User.send(auth_method, request.env['omniauth.auth'])
  end

end