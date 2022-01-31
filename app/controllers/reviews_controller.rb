class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def create
    rank = review_params[:rank].to_f
    body = review_params[:body]
    review = current_user.reviews.build(rank: rank, body: body)
    binding.pry
    if review.save
      redirect_to diagnosis_histories_user_path(current_user), success: 'レビューを投稿しました'
    else
      redirect_to diagnosis_histories_user_path(current_user), danger: '投稿に失敗しました'
    end
  end

  private

  def review_params
    params.require(:review).permit(:rank, :body).merge(commentator_id: params[:commentator_id])
  end
end
