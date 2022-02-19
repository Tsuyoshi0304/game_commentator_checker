class UserSessionsController < ApplicationController
  include Simplified::SearchesHelper
  include Normal::SearchesHelper

  skip_before_action :require_login, only: %i[new create destroy]

  def new
    @commentators = params[:commentators]
    @similar_commentators = params[:similar_commentators]
    @mode = params[:mode]
  end

  def create
    @user = login(params[:email], params[:password])
    if @user
      @commentators = params[:commentators]
      @similar_commentators = params[:similar_commentators]
      @mode = params[:mode]

      if @mode == '1'
        simplified_diagnosis_save(@commentators.presence || @similar_commentators)
      else
        normal_diagnosis_save(@commentators.presence || @similar_commentators)
      end

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
