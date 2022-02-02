class ReviewsController < ApplicationController
  def index
    @reviews = Review.all.includes(:user, :commentator).order(created_at: :desc).page(params[:page]).per(20)
  end
end
