class DiagnosisHistory::ReviewsController < ApplicationController
  before_action :set_review, only: %i[edit update destroy]
  before_action :review_params, only: %i[create update]

  def create
    review = current_user.reviews.build(@params)

    path = Rails.application.routes.recognize_path(request.referrer)
    binding.pry
    if path[:controller] == 'commentators'
      if review.save
        redirect_to commentators_path, success: 'レビューを投稿しました'
      else
        redirect_to commentators_path, danger: '投稿に失敗しました'
      end
    else
      if review.save
        redirect_to diagnosis_history_path, success: 'レビューを投稿しました'
      else
        redirect_to diagnosis_history_path, danger: '投稿に失敗しました'
      end
    end
  end

  def edit
    respond_to do |format|
      format.html
      format.js
    end
  end

  def update
    binding.pry
    if @review.update(review_params)
      redirect_to reviews_path, success: 'レビューを更新しました'
    else
      redirect_to reviews_path, danger: '更新に失敗しました'
    end
  end

  def destroy
    @review.destroy!
    redirect_to reviews_path, success: 'レビューを削除しました'
  end

  private

  def review_params
    @params = params.require(:review).permit(:rank, :body).merge(commentator_id: params[:commentator_id])

    @params[:body] = 'コメントはありません' if @params[:body].blank?

    @params
  end

  def set_review
    @review = current_user.reviews.find(params[:id])
  end
end
