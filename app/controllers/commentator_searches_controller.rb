class CommentatorSearchesController < ApplicationController
  def index; end

  def name
    return @commentators = {} if name_params[:name].blank?
  
    @commentators = Commentator.name_search(name_params).includes(:movie_style)
  
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def play_style
    @commentators = Commentator.play_style_search(play_style_params).includes(:movie_style)
  end
  
  def game_genre
    binding.pry
    @commentators = Commentator.game_genre_search(game_genre_params).includes(:movie_style)
  end
  
  private
  
  def name_params
    params.fetch(:name_search, {}).permit(:name)
  end

  def play_style_params
    params.require(:play_style_search).permit(:play_style)
  end

  def game_genre_params
    #params.require(:game_genre_search).permit(:)
  end
end
