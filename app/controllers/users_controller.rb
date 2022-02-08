class UsersController < ApplicationController
  include Simplified::SearchesHelper

  before_action :user_params_hash, only: %i[create]

  skip_before_action :require_login, only: %i[new create diagnosis_histories destroy]

  def new
    @user = User.new
    @commentators = params[:commentators]
    @similar_commentators = params[:similar_commentators]
  end

  def create
    binding.pry
    @user = User.new(@user_params_hash)
    binding.pry
    if @user.save
      login(params[:user][:email], params[:user][:password])

      @commentators = params[:user][:commentators]
      @similar_commentators = params[:user][:similar_commentators]
      binding.pry
      diagnosis_save(@commentators.present? ? @commentators : @similar_commentators)
      redirect_to root_path, success: 'ユーザー登録、ログインに成功しました' 
    else
      flash.now[:danger] = 'ユーザー登録に失敗しました'
      render :new
    end
  end

  def destroy
  end

  private

  def user_params_hash
    @params = params.require(:user).permit(:name, :email, :password, :password_confirmation, :commentators, :similar_commentators)

    @user_params_hash = @params.permit(:name, :email, :password, :password_confirmation, :commentators, :similar_commentators).to_h

    @user_params_hash.delete(:commentators)

    @user_params_hash.delete(:similar_commentators)
    binding.pry
  end
end
