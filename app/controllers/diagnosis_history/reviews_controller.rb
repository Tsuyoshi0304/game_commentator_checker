class DiagnosisHistory::ReviewsController < ApplicationController
  before_action :set_review, only: %i[edit update destroy]

  def create
    review = current_user.reviews.build(review_params)

    if review.save
      redirect_to diagnosis_history_path, success: 'レビューを投稿しました'
    else
      redirect_to diagnosis_history_path, danger: '投稿に失敗しました'
    end
  end

  def edit
    respond_to do |format|
      format.html
      format.js
    end
  end

  def update
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
    if @params[:body].blank?
      @params[:body] = 'コメントはありません'
    end

    @params
  end

  def set_review
    @review = current_user.reviews.find(params[:id])
  end
end
