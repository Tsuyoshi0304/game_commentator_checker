class UsersController < ApplicationController
  include Simplified::SearchesHelper

  before_action :set_commentators, only: %i[create]

  skip_before_action :require_login, only: %i[new create diagnosis_histories destroy]

  def new
    @user = User.new
    # @commentators = params[:commentators]
    # @similar_commentators = params[:similar_commentators]
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login(params[:user][:email], params[:user][:password])
      # diagnosis_save(@commentators.present? ? @commentators : @similar_commentators)
      redirect_to root_path, success: 'ユーザー登録、ログインに成功しました' 
    else
      flash.now[:danger] = 'ユーザー登録に失敗しました'
      render :new
    end
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def set_commentators
    @commentators = @commentators
    @similar_commentators = @similar_commentators
  end
end
