class CommentatorSearchesController < ApplicationController
  skip_before_action :require_login
  before_action :set_review, only: %i[name play_style game_genre]

  def index
    @parents = GameGenre.where(ancestry: nil)
  end

  def name
    return @commentators = {} if name_params[:name].blank?

    @commentators = Commentator.name_search(name_params).includes([playings: :game], %i[popular_movies movie_style])
  end

  def play_style
    @commentators = Commentator.play_style_search(play_style_params).includes([playings: :game], %i[popular_movies movie_style])
  end

  def game_genre
    genre_name = params[:child_genre_name].nil? ? params[:game_genre_search][:parent_genre_name] : params[:child_genre_name]

    @commentators = Commentator.searches_game_genre_search(genre_name).includes([playings: :game],
                                                                                %i[popular_movies movie_style])
  end

  def game_genre_children
    @game_genre_children = GameGenre.find_by(genre_name: params[:parent_name].to_s, ancestry: nil).children
  end

  private

  def set_review
    @review = Review.new
  end

  def name_params
    params.fetch(:name_search, {}).permit(:name)
  end

  def play_style_params
    params.require(:play_style_search).permit(:play_style)
  end

  def game_genre_params
    params.require(:game_genre_search).permit(:parent_genre_name)
  end
end
