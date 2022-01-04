class Normal::SearchesController < ApplicationController
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
    @recommendation_commentators = recommendation_search_for(@genre_name, @play_style, @vtuber, @sex)
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

  def recommendation_search_for(genre_name, play_style, vtuber, sex)
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
