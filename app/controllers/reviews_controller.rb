class ReviewsController < ApplicationController
  skip_before_action :require_login

  def index
    @reviews = Review.all.includes(:user, :commentator).order(updated_at: :desc).page(params[:page]).per(20)
  end
end
