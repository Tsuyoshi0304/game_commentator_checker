class Normal::SearchesController < ApplicationController
  include Normal::SearchesHelper

  before_action :set_gamegenre, only: %i[new]

  before_action :commentator_params_hash, only: %i[search]

  def get_gamegenre_children
    @gamegenre_children = GameGenre.find_by(genre_name: "#{params[:parent_name]}", ancestry: nil).children
  end

  def new; end

  def search
    genre_name = params[:child_genre_name] == nil ? params[:normal_search][:parent_genre_name] : params[:child_genre_name]
    
    @commentator_params_hash.delete(:parent_genre_name)

    @commentator_params_hash.store(:genre_name, genre_name)

    @commentators = Commentator.normal_search(@commentator_params_hash)
    if @commentators.blank?
      @similar_commentators = Commentator.normal_similar_search(@commentator_params_hash)
    end

    diagnosis_save(@commentators.present? ? @commentators : @similar_commentators)
  end

  private

  def set_gamegenre
    @parents = GameGenre.where(ancestry: nil)
  end

  def commentator_params_hash
    @params = params.require(:normal_search).permit(:parent_genre_name, :sex, :play_style, :is_forming_a_group, :appearance, :vtuber, :length, :live)

    @commentator_params_hash = @params.permit(:parent_genre_name, :sex, :play_style, :is_forming_a_group, :appearance, :vtuber, :length, :live).to_h
  end

  def search_for(genre_name, sex, play_style, is_forming_a_group, appearance, vtuber, length, live)
    game_genres = GameGenre.where(genre_name: genre_name)
    games = Game.where(game_genre_id: game_genres.pluck(:id))
    playings = Playing.where(game_id: games.pluck(:id))
    movie_style = MovieStyle.find_by(length: length, live: live)
    Commentator.where(id: playings.pluck(:commentator_id), 
                      sex: sex, 
                      play_style: play_style, 
                      is_forming_a_group: is_forming_a_group, 
                      appearance: appearance,
                      vtuber: vtuber,
                      movie_style_id: movie_style.id)
  end

  def similar_search_for(genre_name, play_style, vtuber, sex)
    game_genres = GameGenre.where(genre_name: genre_name)
    games = Game.where(game_genre_id: game_genres.pluck(:id))
    playings = Playing.where(game_id: games.pluck(:id))
    movie_style = MovieStyle.all
    Commentator.where(id: playings.pluck(:commentator_id),
                      play_style: play_style, 
                      vtuber: vtuber,
                      sex: sex,
                      is_forming_a_group: [0,1], 
                      appearance: [0,1],
                      movie_style_id: movie_style.pluck(:id)
    )
  end
end
