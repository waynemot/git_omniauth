class CallbacksController < Devise::OmniauthCallbacksController
  def github
    @user = User.from_omniauth(request.env["omniauth.auth"])
    sign_in_and_redirect @user
  end

  def cas
    Rails.logger.info "DEBUG: CallbacksController.cas() traversed, request.env: #{request.env.inspect}"
    @user = User.from_omniauth(request.env["omniauth.auth"])
    sign_in_and_redirect @user, root_url
  end
end
