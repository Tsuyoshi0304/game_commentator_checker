class ProfilesController < ApplicationController
  before_action :set_user, only: %i[edit update destroy]

  def show; end

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to profile_path, success: '編集が完了しました'
    else
      flash.now[:danger] = '編集できませんでした'
      render :edit
    end
  end

  def destroy; end

  private

  def set_user
    @user = User.find(current_user.id)
  end

  def user_params
    params.require(:user).permit(:name, :email, :avatar)
  end
end
