class ApplicationController < ActionController::Base
  include CommentatorSearchesHelper

  add_flash_types :danger, :success

  before_action :require_login

  private

  def not_authenticated
    redirect_to login_path
  end
end
