class DiagnosisHistory::ReviewsController < ApplicationController
  def create
    rank = review_params[:rank].to_f
    body = review_params[:body]
    commentator_id = review_params[:commentator_id].to_i
    review = current_user.reviews.build(rank: rank, body: body, commentator_id: commentator_id)

    if review.save
      redirect_to diagnosis_history_path, success: 'レビューを投稿しました'
    else
      redirect_to diagnosis_history_path, danger: '投稿に失敗しました'
    end
  end

  private

  def review_params
    params.require(:review).permit(:rank, :body).merge(commentator_id: params[:commentator_id])
  end
end
