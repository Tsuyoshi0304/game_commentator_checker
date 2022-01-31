class UsersController < ApplicationController
  skip_before_action :require_login, only: %i[new create diagnosis_histories destroy]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login(params[:user][:email], params[:user][:password])
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
    params.require(:user).permit(:name, :email, :password)
  end
end
