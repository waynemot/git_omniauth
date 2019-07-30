class SessionsController < ApplicationController

  def sign_in
    Rails.logger.info "DEBUG: SessionCtrlr.sign_in() traversed params #{params}"
  end

  def create
    Rails.logger.info "DEBUG: SessionsCtrlr.create() traversed params #{params}"
    Rails.logger.info "DEBUG: request.env: #{request.env}"
    if (request.env['omniauth.auth'])
      user = User.find_by_provider_and_uid(request.env['omniauth.auth']['provider'],request.env['omniauth.auth']['uid'])
      unless user.nil?
        redirect_to users_url
      end
    end
  end
end