class CommentatorsController < ApplicationController
  skip_before_action :require_login

  def index
    @commentators = Commentator.all.includes([playings: :game], [:popular_movies, :movie_style])
    @review = Review.new
  end
end
