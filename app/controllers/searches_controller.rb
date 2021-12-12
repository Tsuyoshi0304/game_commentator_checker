class SearchesController < ApplicationController
  before_action :set_gamegenre, only: %w[new]

  def get_gamegenre_children
    @gamegenre_children = GameGenre.find_by(genre_name: "#{params[:parent_name]}", ancestry: nil).children
  end

  def new; end

  def search
    @genre_name = params['child_genre_name'] == nil ? params['parent_genre_name'] : params['child_genre_name']
    @sex = params['sex']
    @play_style = params['play_style']
    @is_forming_a_group = params['is_forming_a_group']
    @appearance = params['appearance']
    @vtuber = params['vtuber']
    @length = params['length']
    @live = params['live']
    @commentators = search_for(@genre_name, @sex, @play_style, @is_forming_a_group, @appearance, @vtuber, @length, @live)
  end

  private

  def set_gamegenre
    @parents = GameGenre.where(ancestry: nil)
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
end
