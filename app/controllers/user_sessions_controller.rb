class UserSessionsController < ApplicationController
  include Simplified::SearchesHelper

  skip_before_action :require_login, only: %i[new create destroy]

  def new
    @commentators = params[:commentators]
    @similar_commentators = params[:similar_commentators]
  end

  def create
    @user = login(params[:email], params[:password])
    if @user
      @commentators = params[:commentators]
      @similar_commentators = params[:similar_commentators]
      diagnosis_save(@commentators.present? ? @commentators : @similar_commentators)

      redirect_to root_path, success: 'ログインに成功しました'
    else
      flash.now[:danger] = 'ログインに失敗しました'
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_path
  end
end
