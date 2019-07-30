class UsersController < ApplicationController

  before_action :authenticate_user!, except: ['callback', 'sign_in']

  def index
    @users = User.all
  end

  def callback
    Rails.logger.info("DEBUG: UsersCtrlr.callback() path traversed... params: #{params}")
  end

  def sign_in
    Rails.logger.info("DEBUG UsersCtrlr.sign_in() traversed params #{params}")
    redirect_to root_url
  end
end
